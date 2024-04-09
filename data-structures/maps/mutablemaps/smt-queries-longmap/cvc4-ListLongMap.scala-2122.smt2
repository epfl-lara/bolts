; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35934 () Bool)

(assert start!35934)

(declare-fun b!360930 () Bool)

(declare-fun res!200857 () Bool)

(declare-fun e!220993 () Bool)

(assert (=> b!360930 (=> (not res!200857) (not e!220993))))

(declare-datatypes ((array!20233 0))(
  ( (array!20234 (arr!9605 (Array (_ BitVec 32) (_ BitVec 64))) (size!9957 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20233)

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-datatypes ((V!12119 0))(
  ( (V!12120 (val!4223 Int)) )
))
(declare-datatypes ((ValueCell!3835 0))(
  ( (ValueCellFull!3835 (v!6413 V!12119)) (EmptyCell!3835) )
))
(declare-datatypes ((array!20235 0))(
  ( (array!20236 (arr!9606 (Array (_ BitVec 32) ValueCell!3835)) (size!9958 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20235)

(assert (=> b!360930 (= res!200857 (and (= (size!9958 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9957 _keys!1541) (size!9958 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!360931 () Bool)

(declare-fun res!200859 () Bool)

(assert (=> b!360931 (=> (not res!200859) (not e!220993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20233 (_ BitVec 32)) Bool)

(assert (=> b!360931 (= res!200859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!360933 () Bool)

(declare-fun e!220995 () Bool)

(declare-fun tp_is_empty!8357 () Bool)

(assert (=> b!360933 (= e!220995 tp_is_empty!8357)))

(declare-fun mapNonEmpty!14049 () Bool)

(declare-fun mapRes!14049 () Bool)

(declare-fun tp!28125 () Bool)

(declare-fun e!220992 () Bool)

(assert (=> mapNonEmpty!14049 (= mapRes!14049 (and tp!28125 e!220992))))

(declare-fun mapRest!14049 () (Array (_ BitVec 32) ValueCell!3835))

(declare-fun mapValue!14049 () ValueCell!3835)

(declare-fun mapKey!14049 () (_ BitVec 32))

(assert (=> mapNonEmpty!14049 (= (arr!9606 _values!1277) (store mapRest!14049 mapKey!14049 mapValue!14049))))

(declare-fun b!360934 () Bool)

(assert (=> b!360934 (= e!220992 tp_is_empty!8357)))

(declare-fun b!360932 () Bool)

(declare-fun e!220994 () Bool)

(assert (=> b!360932 (= e!220994 (and e!220995 mapRes!14049))))

(declare-fun condMapEmpty!14049 () Bool)

(declare-fun mapDefault!14049 () ValueCell!3835)

