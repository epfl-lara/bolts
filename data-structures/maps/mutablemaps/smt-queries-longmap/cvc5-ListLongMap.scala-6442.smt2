; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82520 () Bool)

(assert start!82520)

(declare-fun b!961256 () Bool)

(declare-fun e!542020 () Bool)

(declare-fun tp_is_empty!21427 () Bool)

(assert (=> b!961256 (= e!542020 tp_is_empty!21427)))

(declare-fun mapNonEmpty!34135 () Bool)

(declare-fun mapRes!34135 () Bool)

(declare-fun tp!65065 () Bool)

(declare-fun e!542022 () Bool)

(assert (=> mapNonEmpty!34135 (= mapRes!34135 (and tp!65065 e!542022))))

(declare-fun mapKey!34135 () (_ BitVec 32))

(declare-datatypes ((V!33553 0))(
  ( (V!33554 (val!10764 Int)) )
))
(declare-datatypes ((ValueCell!10232 0))(
  ( (ValueCellFull!10232 (v!13322 V!33553)) (EmptyCell!10232) )
))
(declare-fun mapValue!34135 () ValueCell!10232)

(declare-fun mapRest!34135 () (Array (_ BitVec 32) ValueCell!10232))

(declare-datatypes ((array!58953 0))(
  ( (array!58954 (arr!28341 (Array (_ BitVec 32) ValueCell!10232)) (size!28821 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58953)

(assert (=> mapNonEmpty!34135 (= (arr!28341 _values!1400) (store mapRest!34135 mapKey!34135 mapValue!34135))))

(declare-fun mapIsEmpty!34135 () Bool)

(assert (=> mapIsEmpty!34135 mapRes!34135))

(declare-fun b!961257 () Bool)

(assert (=> b!961257 (= e!542022 tp_is_empty!21427)))

(declare-fun b!961258 () Bool)

(declare-fun e!542023 () Bool)

(assert (=> b!961258 (= e!542023 (and e!542020 mapRes!34135))))

(declare-fun condMapEmpty!34135 () Bool)

(declare-fun mapDefault!34135 () ValueCell!10232)

