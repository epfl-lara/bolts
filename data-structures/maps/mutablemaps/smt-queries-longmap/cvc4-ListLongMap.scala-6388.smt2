; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82144 () Bool)

(assert start!82144)

(declare-fun b!957124 () Bool)

(declare-fun res!640859 () Bool)

(declare-fun e!539499 () Bool)

(assert (=> b!957124 (=> (not res!640859) (not e!539499))))

(declare-datatypes ((List!19644 0))(
  ( (Nil!19641) (Cons!19640 (h!20802 (_ BitVec 64)) (t!28015 List!19644)) )
))
(declare-fun noDuplicate!1370 (List!19644) Bool)

(assert (=> b!957124 (= res!640859 (noDuplicate!1370 Nil!19641))))

(declare-fun b!957125 () Bool)

(declare-fun e!539497 () Bool)

(declare-fun tp_is_empty!21107 () Bool)

(assert (=> b!957125 (= e!539497 tp_is_empty!21107)))

(declare-fun b!957126 () Bool)

(declare-fun res!640858 () Bool)

(assert (=> b!957126 (=> (not res!640858) (not e!539499))))

(declare-datatypes ((array!58337 0))(
  ( (array!58338 (arr!28039 (Array (_ BitVec 32) (_ BitVec 64))) (size!28519 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58337)

(assert (=> b!957126 (= res!640858 (and (bvsle #b00000000000000000000000000000000 (size!28519 _keys!1668)) (bvslt (size!28519 _keys!1668) #b01111111111111111111111111111111)))))

(declare-fun b!957127 () Bool)

(declare-fun res!640861 () Bool)

(assert (=> b!957127 (=> (not res!640861) (not e!539499))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58337 (_ BitVec 32)) Bool)

(assert (=> b!957127 (= res!640861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957128 () Bool)

(declare-fun e!539495 () Bool)

(declare-fun mapRes!33637 () Bool)

(assert (=> b!957128 (= e!539495 (and e!539497 mapRes!33637))))

(declare-fun condMapEmpty!33637 () Bool)

(declare-datatypes ((V!33125 0))(
  ( (V!33126 (val!10604 Int)) )
))
(declare-datatypes ((ValueCell!10072 0))(
  ( (ValueCellFull!10072 (v!13160 V!33125)) (EmptyCell!10072) )
))
(declare-datatypes ((array!58339 0))(
  ( (array!58340 (arr!28040 (Array (_ BitVec 32) ValueCell!10072)) (size!28520 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58339)

(declare-fun mapDefault!33637 () ValueCell!10072)

