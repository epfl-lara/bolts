; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35916 () Bool)

(assert start!35916)

(declare-fun mapNonEmpty!14028 () Bool)

(declare-fun mapRes!14028 () Bool)

(declare-fun tp!28104 () Bool)

(declare-fun e!220898 () Bool)

(assert (=> mapNonEmpty!14028 (= mapRes!14028 (and tp!28104 e!220898))))

(declare-datatypes ((V!12103 0))(
  ( (V!12104 (val!4217 Int)) )
))
(declare-datatypes ((ValueCell!3829 0))(
  ( (ValueCellFull!3829 (v!6407 V!12103)) (EmptyCell!3829) )
))
(declare-fun mapValue!14028 () ValueCell!3829)

(declare-fun mapKey!14028 () (_ BitVec 32))

(declare-datatypes ((array!20213 0))(
  ( (array!20214 (arr!9596 (Array (_ BitVec 32) ValueCell!3829)) (size!9948 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20213)

(declare-fun mapRest!14028 () (Array (_ BitVec 32) ValueCell!3829))

(assert (=> mapNonEmpty!14028 (= (arr!9596 _values!1277) (store mapRest!14028 mapKey!14028 mapValue!14028))))

(declare-fun b!360834 () Bool)

(declare-fun e!220896 () Bool)

(declare-fun tp_is_empty!8345 () Bool)

(assert (=> b!360834 (= e!220896 tp_is_empty!8345)))

(declare-fun b!360835 () Bool)

(declare-fun e!220897 () Bool)

(assert (=> b!360835 (= e!220897 (and e!220896 mapRes!14028))))

(declare-fun condMapEmpty!14028 () Bool)

(declare-fun mapDefault!14028 () ValueCell!3829)

