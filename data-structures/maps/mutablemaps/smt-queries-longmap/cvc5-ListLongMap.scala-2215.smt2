; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36760 () Bool)

(assert start!36760)

(declare-fun mapIsEmpty!14355 () Bool)

(declare-fun mapRes!14355 () Bool)

(assert (=> mapIsEmpty!14355 mapRes!14355))

(declare-fun b!366555 () Bool)

(declare-fun e!224413 () Bool)

(declare-fun tp_is_empty!8527 () Bool)

(assert (=> b!366555 (= e!224413 tp_is_empty!8527)))

(declare-fun b!366556 () Bool)

(declare-fun e!224414 () Bool)

(assert (=> b!366556 (= e!224414 (and e!224413 mapRes!14355))))

(declare-fun condMapEmpty!14355 () Bool)

(declare-datatypes ((V!12475 0))(
  ( (V!12476 (val!4308 Int)) )
))
(declare-datatypes ((ValueCell!3920 0))(
  ( (ValueCellFull!3920 (v!6501 V!12475)) (EmptyCell!3920) )
))
(declare-datatypes ((array!20983 0))(
  ( (array!20984 (arr!9957 (Array (_ BitVec 32) ValueCell!3920)) (size!10309 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20983)

(declare-fun mapDefault!14355 () ValueCell!3920)

