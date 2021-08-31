// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// // **************************************************************************
// // ReactiveFormsGenerator
// // **************************************************************************
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:reactive_forms/reactive_forms.dart';
// import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
// import 'package:example/helpers.dart';
// import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
// import 'dart:core';
// import 'login.dart';
//
// class ReactiveArrayNullableFormConsumer extends StatelessWidget {
//   ReactiveArrayNullableFormConsumer(
//       {Key? key, required this.builder, this.child})
//       : super(key: key);
//
//   final Widget? child;
//
//   final Widget Function(
//       BuildContext context, ArrayNullableForm formModel, Widget? child) builder;
//
//   @override
//   Widget build(BuildContext context) {
//     final formModel = ReactiveArrayNullableForm.of(context);
//
//     if (formModel is! ArrayNullableForm) {
//       throw FormControlParentNotFoundException(this);
//     }
//     return builder(context, formModel, child);
//   }
// }
//
// class ArrayNullableFormInheritedStreamer extends InheritedStreamer<dynamic> {
//   ArrayNullableFormInheritedStreamer(
//       {Key? key,
//       required this.form,
//       required Stream<dynamic> stream,
//       required Widget child})
//       : super(stream, child, key: key);
//
//   final ArrayNullableForm form;
// }
//
// class ReactiveArrayNullableForm extends StatelessWidget {
//   ReactiveArrayNullableForm(
//       {Key? key, required this.form, required this.child, this.onWillPop})
//       : super(key: key);
//
//   final Widget child;
//
//   final ArrayNullableForm form;
//
//   final WillPopCallback? onWillPop;
//
//   static ArrayNullableForm? of(BuildContext context, {bool listen = true}) {
//     if (listen) {
//       return context
//           .dependOnInheritedWidgetOfExactType<
//               ArrayNullableFormInheritedStreamer>()
//           ?.form;
//     }
//
//     final element = context.getElementForInheritedWidgetOfExactType<
//         ArrayNullableFormInheritedStreamer>();
//     return element == null
//         ? null
//         : (element.widget as ArrayNullableFormInheritedStreamer).form;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ArrayNullableFormInheritedStreamer(
//       form: form,
//       stream: form.form.statusChanged,
//       child: WillPopScope(
//         onWillPop: onWillPop,
//         child: child,
//       ),
//     );
//   }
// }
//
// class ArrayNullableFormBuilder extends StatefulWidget {
//   ArrayNullableFormBuilder(
//       {Key? key,
//       required this.model,
//       this.child,
//       this.onWillPop,
//       required this.builder})
//       : super(key: key);
//
//   final ArrayNullable model;
//
//   final Widget? child;
//
//   final WillPopCallback? onWillPop;
//
//   final Widget Function(
//       BuildContext context, ArrayNullableForm formModel, Widget? child) builder;
//
//   @override
//   _ArrayNullableFormBuilderState createState() =>
//       _ArrayNullableFormBuilderState();
// }
//
// class _ArrayNullableFormBuilderState extends State<ArrayNullableFormBuilder> {
//   late FormGroup _form;
//
//   late ArrayNullableForm _formModel;
//
//   @override
//   void initState() {
//     _form = FormGroup({});
//     _formModel = ArrayNullableForm(widget.model, _form, null);
//
//     _form.addAll(_formModel.formElements().controls);
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ReactiveArrayNullableForm(
//       form: _formModel,
//       onWillPop: widget.onWillPop,
//       child: ReactiveForm(
//         formGroup: _form,
//         onWillPop: widget.onWillPop,
//         child: widget.builder(context, _formModel, widget.child),
//       ),
//     );
//   }
// }
//
// class ArrayNullableForm {
//   ArrayNullableForm(this.arrayNullable, this.form, this.path) {}
//
//   static String emailListControlName = "emailList";
//
//   static String fruitListControlName = "fruitList";
//
//   static String vegetablesListControlName = "vegetablesList";
//
//   static String someListControlName = "someList";
//
//   final ArrayNullable arrayNullable;
//
//   final FormGroup form;
//
//   final String? path;
//
//   String emailListControlPath() => pathBuilder(emailListControlName);
//   String fruitListControlPath() => pathBuilder(fruitListControlName);
//   String vegetablesListControlPath() => pathBuilder(vegetablesListControlName);
//   String someListControlPath() => pathBuilder(someListControlName);
//   List<String> get emailListValue =>
//       emailListControl.value?.whereType<String>().toList() ?? [];
//   List<bool?> get fruitListValue =>
//       fruitListControl.value?.whereType<bool?>().toList() ?? [];
//   List<String?>? get vegetablesListValue =>
//       vegetablesListControl.value?.whereType<String?>().toList() ?? [];
//   List<String?>? get someListValue =>
//       someListControl.value?.whereType<String?>().toList() ?? [];
//   bool get containsEmailList => form.contains(emailListControlPath());
//   bool get containsFruitList => form.contains(fruitListControlPath());
//   bool get containsVegetablesList => form.contains(vegetablesListControlPath());
//   bool get containsSomeList => form.contains(someListControlPath());
//   Object? get emailListErrors => emailListControl.errors;
//   Object? get fruitListErrors => fruitListControl.errors;
//   Object? get vegetablesListErrors => vegetablesListControl.errors;
//   Object? get someListErrors => someListControl.errors;
//   void get emailListFocus => form.focus(emailListControlPath());
//   void get fruitListFocus => form.focus(fruitListControlPath());
//   void get vegetablesListFocus => form.focus(vegetablesListControlPath());
//   void get someListFocus => form.focus(someListControlPath());
//   FormArray<String> get emailListControl =>
//       form.control(emailListControlPath()) as FormArray<String>;
//   FormArray<bool> get fruitListControl =>
//       form.control(fruitListControlPath()) as FormArray<bool>;
//   FormArray<String> get vegetablesListControl =>
//       form.control(vegetablesListControlPath()) as FormArray<String>;
//   FormArray<String> get someListControl =>
//       form.control(someListControlPath()) as FormArray<String>;
//   void addEmailListItem(String value,
//       {List<AsyncValidatorFunction>? asyncValidators,
//       List<ValidatorFunction>? validators,
//       int? asyncValidatorsDebounceTime,
//       bool? disabled,
//       ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge}) {
//     List<ValidatorFunction> resultingValidators = [];
//     List<AsyncValidatorFunction> resultingAsyncValidators = [];
//
//     switch (validatorsApplyMode) {
//       case ValidatorsApplyMode.merge:
//         if (validators != null) resultingValidators.addAll(validators);
//         if (asyncValidators != null)
//           resultingAsyncValidators.addAll(asyncValidators);
//         break;
//       case ValidatorsApplyMode.override:
//         if (validators != null) resultingValidators = validators;
//
//         if (asyncValidators != null) resultingAsyncValidators = asyncValidators;
//         break;
//     }
//
//     emailListControl.add(FormControl<String>(
//       value: value,
//       validators: resultingValidators,
//       asyncValidators: resultingAsyncValidators,
//       asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
//       disabled: disabled ?? false,
//     ));
//   }
//
//   void addFruitListItem(bool value,
//       {List<AsyncValidatorFunction>? asyncValidators,
//       List<ValidatorFunction>? validators,
//       int? asyncValidatorsDebounceTime,
//       bool? disabled,
//       ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge}) {
//     List<ValidatorFunction> resultingValidators = [];
//     List<AsyncValidatorFunction> resultingAsyncValidators = [];
//
//     switch (validatorsApplyMode) {
//       case ValidatorsApplyMode.merge:
//         if (validators != null) resultingValidators.addAll(validators);
//         if (asyncValidators != null)
//           resultingAsyncValidators.addAll(asyncValidators);
//         break;
//       case ValidatorsApplyMode.override:
//         if (validators != null) resultingValidators = validators;
//
//         if (asyncValidators != null) resultingAsyncValidators = asyncValidators;
//         break;
//     }
//
//     fruitListControl.add(FormControl<bool>(
//       value: value,
//       validators: resultingValidators,
//       asyncValidators: resultingAsyncValidators,
//       asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
//       disabled: disabled ?? false,
//     ));
//   }
//
//   void addVegetablesListItem(String value,
//       {List<AsyncValidatorFunction>? asyncValidators,
//       List<ValidatorFunction>? validators,
//       int? asyncValidatorsDebounceTime,
//       bool? disabled,
//       ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge}) {
//     List<ValidatorFunction> resultingValidators = [];
//     List<AsyncValidatorFunction> resultingAsyncValidators = [];
//
//     switch (validatorsApplyMode) {
//       case ValidatorsApplyMode.merge:
//         if (validators != null) resultingValidators.addAll(validators);
//         if (asyncValidators != null)
//           resultingAsyncValidators.addAll(asyncValidators);
//         break;
//       case ValidatorsApplyMode.override:
//         if (validators != null) resultingValidators = validators;
//
//         if (asyncValidators != null) resultingAsyncValidators = asyncValidators;
//         break;
//     }
//
//     vegetablesListControl.add(FormControl<String>(
//       value: value,
//       validators: resultingValidators,
//       asyncValidators: resultingAsyncValidators,
//       asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
//       disabled: disabled ?? false,
//     ));
//   }
//
//   void addSomeListItem(String value,
//       {List<AsyncValidatorFunction>? asyncValidators,
//       List<ValidatorFunction>? validators,
//       int? asyncValidatorsDebounceTime,
//       bool? disabled,
//       ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge}) {
//     List<ValidatorFunction> resultingValidators = [];
//     List<AsyncValidatorFunction> resultingAsyncValidators = [];
//
//     switch (validatorsApplyMode) {
//       case ValidatorsApplyMode.merge:
//         if (validators != null) resultingValidators.addAll(validators);
//         if (asyncValidators != null)
//           resultingAsyncValidators.addAll(asyncValidators);
//         break;
//       case ValidatorsApplyMode.override:
//         if (validators != null) resultingValidators = validators;
//
//         if (asyncValidators != null) resultingAsyncValidators = asyncValidators;
//         break;
//     }
//
//     someListControl.add(FormControl<String>(
//       value: value,
//       validators: resultingValidators,
//       asyncValidators: resultingAsyncValidators,
//       asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
//       disabled: disabled ?? false,
//     ));
//   }
//
//   ArrayNullable get model => ArrayNullable(
//       emailList: emailListValue,
//       fruitList: fruitListValue,
//       vegetablesList: vegetablesListValue,
//       someList: someListValue);
//   String pathBuilder(String? pathItem) =>
//       [path, pathItem].whereType<String>().join(".");
//   FormGroup formElements() => FormGroup({
//         emailListControlName: FormArray<String>(
//             arrayNullable.emailList
//                 .map((e) => FormControl<String>(
//                       value: e,
//                       validators: [],
//                       asyncValidators: [],
//                       asyncValidatorsDebounceTime: 250,
//                       disabled: false,
//                     ))
//                 .toList(),
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false),
//         fruitListControlName: FormArray<bool>(
//             arrayNullable.fruitList
//                 .map((e) => FormControl<bool>(
//                       value: e,
//                       validators: [],
//                       asyncValidators: [],
//                       asyncValidatorsDebounceTime: 250,
//                       disabled: false,
//                     ))
//                 .toList(),
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false),
//         vegetablesListControlName: FormArray<String>(
//             arrayNullable.vegetablesList
//                     ?.map((e) => FormControl<String>(
//                           value: e,
//                           validators: [],
//                           asyncValidators: [],
//                           asyncValidatorsDebounceTime: 250,
//                           disabled: false,
//                         ))
//                     .toList() ??
//                 [],
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false),
//         someListControlName: FormArray<String>(
//             arrayNullable.someList
//                     ?.map((e) => FormControl<String>(
//                           value: e,
//                           validators: [],
//                           asyncValidators: [],
//                           asyncValidatorsDebounceTime: 250,
//                           disabled: false,
//                         ))
//                     .toList() ??
//                 [],
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false)
//       },
//           validators: [],
//           asyncValidators: [],
//           asyncValidatorsDebounceTime: 250,
//           disabled: false);
// }