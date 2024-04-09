; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35412 () Bool)

(assert start!35412)

(declare-fun mapNonEmpty!13293 () Bool)

(declare-fun mapRes!13293 () Bool)

(declare-fun tp!27189 () Bool)

(declare-fun e!217114 () Bool)

(assert (=> mapNonEmpty!13293 (= mapRes!13293 (and tp!27189 e!217114))))

(declare-datatypes ((V!11453 0))(
  ( (V!11454 (val!3973 Int)) )
))
(declare-datatypes ((ValueCell!3585 0))(
  ( (ValueCellFull!3585 (v!6163 V!11453)) (EmptyCell!3585) )
))
(declare-fun mapValue!13293 () ValueCell!3585)

(declare-fun mapKey!13293 () (_ BitVec 32))

(declare-fun mapRest!13293 () (Array (_ BitVec 32) ValueCell!3585))

(declare-datatypes ((array!19269 0))(
  ( (array!19270 (arr!9125 (Array (_ BitVec 32) ValueCell!3585)) (size!9477 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19269)

(assert (=> mapNonEmpty!13293 (= (arr!9125 _values!1208) (store mapRest!13293 mapKey!13293 mapValue!13293))))

(declare-fun mapIsEmpty!13293 () Bool)

(assert (=> mapIsEmpty!13293 mapRes!13293))

(declare-fun b!354219 () Bool)

(declare-fun e!217113 () Bool)

(assert (=> b!354219 (= e!217113 false)))

(declare-fun lt!165661 () Bool)

(declare-datatypes ((array!19271 0))(
  ( (array!19272 (arr!9126 (Array (_ BitVec 32) (_ BitVec 64))) (size!9478 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19271)

(declare-datatypes ((List!5317 0))(
  ( (Nil!5314) (Cons!5313 (h!6169 (_ BitVec 64)) (t!10475 List!5317)) )
))
(declare-fun arrayNoDuplicates!0 (array!19271 (_ BitVec 32) List!5317) Bool)

(assert (=> b!354219 (= lt!165661 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5314))))

(declare-fun res!196425 () Bool)

(assert (=> start!35412 (=> (not res!196425) (not e!217113))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35412 (= res!196425 (validMask!0 mask!1842))))

(assert (=> start!35412 e!217113))

(assert (=> start!35412 true))

(declare-fun e!217115 () Bool)

(declare-fun array_inv!6718 (array!19269) Bool)

(assert (=> start!35412 (and (array_inv!6718 _values!1208) e!217115)))

(declare-fun array_inv!6719 (array!19271) Bool)

(assert (=> start!35412 (array_inv!6719 _keys!1456)))

(declare-fun b!354220 () Bool)

(declare-fun tp_is_empty!7857 () Bool)

(assert (=> b!354220 (= e!217114 tp_is_empty!7857)))

(declare-fun b!354221 () Bool)

(declare-fun e!217112 () Bool)

(assert (=> b!354221 (= e!217115 (and e!217112 mapRes!13293))))

(declare-fun condMapEmpty!13293 () Bool)

(declare-fun mapDefault!13293 () ValueCell!3585)

(assert (=> b!354221 (= condMapEmpty!13293 (= (arr!9125 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3585)) mapDefault!13293)))))

(declare-fun b!354222 () Bool)

(declare-fun res!196426 () Bool)

(assert (=> b!354222 (=> (not res!196426) (not e!217113))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354222 (= res!196426 (and (= (size!9477 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9478 _keys!1456) (size!9477 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354223 () Bool)

(declare-fun res!196424 () Bool)

(assert (=> b!354223 (=> (not res!196424) (not e!217113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19271 (_ BitVec 32)) Bool)

(assert (=> b!354223 (= res!196424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354224 () Bool)

(assert (=> b!354224 (= e!217112 tp_is_empty!7857)))

(assert (= (and start!35412 res!196425) b!354222))

(assert (= (and b!354222 res!196426) b!354223))

(assert (= (and b!354223 res!196424) b!354219))

(assert (= (and b!354221 condMapEmpty!13293) mapIsEmpty!13293))

(assert (= (and b!354221 (not condMapEmpty!13293)) mapNonEmpty!13293))

(get-info :version)

(assert (= (and mapNonEmpty!13293 ((_ is ValueCellFull!3585) mapValue!13293)) b!354220))

(assert (= (and b!354221 ((_ is ValueCellFull!3585) mapDefault!13293)) b!354224))

(assert (= start!35412 b!354221))

(declare-fun m!353283 () Bool)

(assert (=> mapNonEmpty!13293 m!353283))

(declare-fun m!353285 () Bool)

(assert (=> b!354219 m!353285))

(declare-fun m!353287 () Bool)

(assert (=> start!35412 m!353287))

(declare-fun m!353289 () Bool)

(assert (=> start!35412 m!353289))

(declare-fun m!353291 () Bool)

(assert (=> start!35412 m!353291))

(declare-fun m!353293 () Bool)

(assert (=> b!354223 m!353293))

(check-sat (not mapNonEmpty!13293) (not b!354219) tp_is_empty!7857 (not start!35412) (not b!354223))
(check-sat)
