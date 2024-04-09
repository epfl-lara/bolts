; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35912 () Bool)

(assert start!35912)

(declare-fun mapNonEmpty!14022 () Bool)

(declare-fun mapRes!14022 () Bool)

(declare-fun tp!28098 () Bool)

(declare-fun e!220870 () Bool)

(assert (=> mapNonEmpty!14022 (= mapRes!14022 (and tp!28098 e!220870))))

(declare-fun mapKey!14022 () (_ BitVec 32))

(declare-datatypes ((V!12099 0))(
  ( (V!12100 (val!4215 Int)) )
))
(declare-datatypes ((ValueCell!3827 0))(
  ( (ValueCellFull!3827 (v!6405 V!12099)) (EmptyCell!3827) )
))
(declare-fun mapRest!14022 () (Array (_ BitVec 32) ValueCell!3827))

(declare-fun mapValue!14022 () ValueCell!3827)

(declare-datatypes ((array!20205 0))(
  ( (array!20206 (arr!9592 (Array (_ BitVec 32) ValueCell!3827)) (size!9944 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20205)

(assert (=> mapNonEmpty!14022 (= (arr!9592 _values!1277) (store mapRest!14022 mapKey!14022 mapValue!14022))))

(declare-datatypes ((array!20207 0))(
  ( (array!20208 (arr!9593 (Array (_ BitVec 32) (_ BitVec 64))) (size!9945 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20207)

(declare-fun e!220869 () Bool)

(declare-fun b!360810 () Bool)

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(assert (=> b!360810 (= e!220869 (and (= (size!9944 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9945 _keys!1541) (size!9944 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011) (not (= (size!9945 _keys!1541) (bvadd #b00000000000000000000000000000001 mask!1943)))))))

(declare-fun b!360811 () Bool)

(declare-fun e!220868 () Bool)

(declare-fun tp_is_empty!8341 () Bool)

(assert (=> b!360811 (= e!220868 tp_is_empty!8341)))

(declare-fun b!360812 () Bool)

(assert (=> b!360812 (= e!220870 tp_is_empty!8341)))

(declare-fun b!360813 () Bool)

(declare-fun e!220867 () Bool)

(assert (=> b!360813 (= e!220867 (and e!220868 mapRes!14022))))

(declare-fun condMapEmpty!14022 () Bool)

(declare-fun mapDefault!14022 () ValueCell!3827)

