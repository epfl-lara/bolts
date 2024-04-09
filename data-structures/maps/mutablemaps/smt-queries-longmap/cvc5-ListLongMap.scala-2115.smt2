; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35866 () Bool)

(assert start!35866)

(declare-fun b!360277 () Bool)

(declare-fun res!200442 () Bool)

(declare-fun e!220601 () Bool)

(assert (=> b!360277 (=> (not res!200442) (not e!220601))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!20143 0))(
  ( (array!20144 (arr!9562 (Array (_ BitVec 32) (_ BitVec 64))) (size!9914 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20143)

(declare-datatypes ((V!12059 0))(
  ( (V!12060 (val!4200 Int)) )
))
(declare-datatypes ((ValueCell!3812 0))(
  ( (ValueCellFull!3812 (v!6390 V!12059)) (EmptyCell!3812) )
))
(declare-datatypes ((array!20145 0))(
  ( (array!20146 (arr!9563 (Array (_ BitVec 32) ValueCell!3812)) (size!9915 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20145)

(assert (=> b!360277 (= res!200442 (and (= (size!9915 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9914 _keys!1456) (size!9915 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360278 () Bool)

(declare-fun e!220597 () Bool)

(declare-fun tp_is_empty!8311 () Bool)

(assert (=> b!360278 (= e!220597 tp_is_empty!8311)))

(declare-fun b!360279 () Bool)

(declare-fun res!200440 () Bool)

(assert (=> b!360279 (=> (not res!200440) (not e!220601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20143 (_ BitVec 32)) Bool)

(assert (=> b!360279 (= res!200440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!200441 () Bool)

(assert (=> start!35866 (=> (not res!200441) (not e!220601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35866 (= res!200441 (validMask!0 mask!1842))))

(assert (=> start!35866 e!220601))

(assert (=> start!35866 tp_is_empty!8311))

(assert (=> start!35866 true))

(declare-fun array_inv!7030 (array!20143) Bool)

(assert (=> start!35866 (array_inv!7030 _keys!1456)))

(declare-fun e!220599 () Bool)

(declare-fun array_inv!7031 (array!20145) Bool)

(assert (=> start!35866 (and (array_inv!7031 _values!1208) e!220599)))

(declare-fun b!360280 () Bool)

(assert (=> b!360280 (= e!220601 (not true))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!20143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360280 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((Unit!11081 0))(
  ( (Unit!11082) )
))
(declare-fun lt!166414 () Unit!11081)

(declare-fun minValue!1150 () V!12059)

(declare-fun zeroValue!1150 () V!12059)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!57 (array!20143 array!20145 (_ BitVec 32) (_ BitVec 32) V!12059 V!12059 (_ BitVec 64) (_ BitVec 32)) Unit!11081)

(assert (=> b!360280 (= lt!166414 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!57 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!360281 () Bool)

(declare-fun res!200439 () Bool)

(assert (=> b!360281 (=> (not res!200439) (not e!220601))))

(assert (=> b!360281 (= res!200439 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9914 _keys!1456))))))

(declare-fun mapIsEmpty!13974 () Bool)

(declare-fun mapRes!13974 () Bool)

(assert (=> mapIsEmpty!13974 mapRes!13974))

(declare-fun b!360282 () Bool)

(declare-fun res!200443 () Bool)

(assert (=> b!360282 (=> (not res!200443) (not e!220601))))

(assert (=> b!360282 (= res!200443 (not (= (select (arr!9562 _keys!1456) from!1805) k!1077)))))

(declare-fun mapNonEmpty!13974 () Bool)

(declare-fun tp!28041 () Bool)

(assert (=> mapNonEmpty!13974 (= mapRes!13974 (and tp!28041 e!220597))))

(declare-fun mapRest!13974 () (Array (_ BitVec 32) ValueCell!3812))

(declare-fun mapValue!13974 () ValueCell!3812)

(declare-fun mapKey!13974 () (_ BitVec 32))

(assert (=> mapNonEmpty!13974 (= (arr!9563 _values!1208) (store mapRest!13974 mapKey!13974 mapValue!13974))))

(declare-fun b!360283 () Bool)

(declare-fun res!200444 () Bool)

(assert (=> b!360283 (=> (not res!200444) (not e!220601))))

(declare-datatypes ((List!5517 0))(
  ( (Nil!5514) (Cons!5513 (h!6369 (_ BitVec 64)) (t!10675 List!5517)) )
))
(declare-fun arrayNoDuplicates!0 (array!20143 (_ BitVec 32) List!5517) Bool)

(assert (=> b!360283 (= res!200444 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5514))))

(declare-fun b!360284 () Bool)

(declare-fun e!220598 () Bool)

(assert (=> b!360284 (= e!220598 tp_is_empty!8311)))

(declare-fun b!360285 () Bool)

(assert (=> b!360285 (= e!220599 (and e!220598 mapRes!13974))))

(declare-fun condMapEmpty!13974 () Bool)

(declare-fun mapDefault!13974 () ValueCell!3812)

