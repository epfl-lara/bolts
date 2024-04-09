; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95552 () Bool)

(assert start!95552)

(declare-fun b!1078745 () Bool)

(declare-fun res!718930 () Bool)

(declare-fun e!616818 () Bool)

(assert (=> b!1078745 (=> (not res!718930) (not e!616818))))

(declare-datatypes ((array!69284 0))(
  ( (array!69285 (arr!33313 (Array (_ BitVec 32) (_ BitVec 64))) (size!33850 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69284)

(declare-datatypes ((List!23361 0))(
  ( (Nil!23358) (Cons!23357 (h!24566 (_ BitVec 64)) (t!32727 List!23361)) )
))
(declare-fun arrayNoDuplicates!0 (array!69284 (_ BitVec 32) List!23361) Bool)

(assert (=> b!1078745 (= res!718930 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23358))))

(declare-fun b!1078746 () Bool)

(declare-fun e!616820 () Bool)

(declare-fun tp_is_empty!26187 () Bool)

(assert (=> b!1078746 (= e!616820 tp_is_empty!26187)))

(declare-fun mapIsEmpty!41032 () Bool)

(declare-fun mapRes!41032 () Bool)

(assert (=> mapIsEmpty!41032 mapRes!41032))

(declare-fun b!1078747 () Bool)

(declare-fun e!616816 () Bool)

(declare-fun e!616821 () Bool)

(assert (=> b!1078747 (= e!616816 (and e!616821 mapRes!41032))))

(declare-fun condMapEmpty!41032 () Bool)

(declare-datatypes ((V!40043 0))(
  ( (V!40044 (val!13150 Int)) )
))
(declare-datatypes ((ValueCell!12384 0))(
  ( (ValueCellFull!12384 (v!15772 V!40043)) (EmptyCell!12384) )
))
(declare-datatypes ((array!69286 0))(
  ( (array!69287 (arr!33314 (Array (_ BitVec 32) ValueCell!12384)) (size!33851 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69286)

(declare-fun mapDefault!41032 () ValueCell!12384)

(assert (=> b!1078747 (= condMapEmpty!41032 (= (arr!33314 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12384)) mapDefault!41032)))))

(declare-fun res!718934 () Bool)

(assert (=> start!95552 (=> (not res!718934) (not e!616818))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95552 (= res!718934 (validMask!0 mask!1414))))

(assert (=> start!95552 e!616818))

(assert (=> start!95552 true))

(declare-fun array_inv!25596 (array!69284) Bool)

(assert (=> start!95552 (array_inv!25596 _keys!1070)))

(declare-fun array_inv!25597 (array!69286) Bool)

(assert (=> start!95552 (and (array_inv!25597 _values!874) e!616816)))

(declare-fun b!1078748 () Bool)

(declare-fun res!718928 () Bool)

(assert (=> b!1078748 (=> (not res!718928) (not e!616818))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078748 (= res!718928 (validKeyInArray!0 k0!904))))

(declare-fun b!1078749 () Bool)

(declare-fun res!718935 () Bool)

(assert (=> b!1078749 (=> (not res!718935) (not e!616818))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078749 (= res!718935 (= (select (arr!33313 _keys!1070) i!650) k0!904))))

(declare-fun b!1078750 () Bool)

(declare-fun res!718929 () Bool)

(assert (=> b!1078750 (=> (not res!718929) (not e!616818))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1078750 (= res!718929 (and (= (size!33851 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33850 _keys!1070) (size!33851 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078751 () Bool)

(declare-fun res!718932 () Bool)

(assert (=> b!1078751 (=> (not res!718932) (not e!616818))))

(assert (=> b!1078751 (= res!718932 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33850 _keys!1070))))))

(declare-fun b!1078752 () Bool)

(declare-fun res!718933 () Bool)

(declare-fun e!616817 () Bool)

(assert (=> b!1078752 (=> (not res!718933) (not e!616817))))

(declare-fun lt!478675 () array!69284)

(assert (=> b!1078752 (= res!718933 (arrayNoDuplicates!0 lt!478675 #b00000000000000000000000000000000 Nil!23358))))

(declare-fun b!1078753 () Bool)

(assert (=> b!1078753 (= e!616817 (not (bvslt #b00000000000000000000000000000000 (size!33850 _keys!1070))))))

(declare-fun arrayContainsKey!0 (array!69284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1078753 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35417 0))(
  ( (Unit!35418) )
))
(declare-fun lt!478676 () Unit!35417)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69284 (_ BitVec 64) (_ BitVec 32)) Unit!35417)

(assert (=> b!1078753 (= lt!478676 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1078754 () Bool)

(assert (=> b!1078754 (= e!616821 tp_is_empty!26187)))

(declare-fun b!1078755 () Bool)

(declare-fun res!718927 () Bool)

(assert (=> b!1078755 (=> (not res!718927) (not e!616818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69284 (_ BitVec 32)) Bool)

(assert (=> b!1078755 (= res!718927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41032 () Bool)

(declare-fun tp!78495 () Bool)

(assert (=> mapNonEmpty!41032 (= mapRes!41032 (and tp!78495 e!616820))))

(declare-fun mapKey!41032 () (_ BitVec 32))

(declare-fun mapValue!41032 () ValueCell!12384)

(declare-fun mapRest!41032 () (Array (_ BitVec 32) ValueCell!12384))

(assert (=> mapNonEmpty!41032 (= (arr!33314 _values!874) (store mapRest!41032 mapKey!41032 mapValue!41032))))

(declare-fun b!1078756 () Bool)

(assert (=> b!1078756 (= e!616818 e!616817)))

(declare-fun res!718931 () Bool)

(assert (=> b!1078756 (=> (not res!718931) (not e!616817))))

(assert (=> b!1078756 (= res!718931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478675 mask!1414))))

(assert (=> b!1078756 (= lt!478675 (array!69285 (store (arr!33313 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33850 _keys!1070)))))

(assert (= (and start!95552 res!718934) b!1078750))

(assert (= (and b!1078750 res!718929) b!1078755))

(assert (= (and b!1078755 res!718927) b!1078745))

(assert (= (and b!1078745 res!718930) b!1078751))

(assert (= (and b!1078751 res!718932) b!1078748))

(assert (= (and b!1078748 res!718928) b!1078749))

(assert (= (and b!1078749 res!718935) b!1078756))

(assert (= (and b!1078756 res!718931) b!1078752))

(assert (= (and b!1078752 res!718933) b!1078753))

(assert (= (and b!1078747 condMapEmpty!41032) mapIsEmpty!41032))

(assert (= (and b!1078747 (not condMapEmpty!41032)) mapNonEmpty!41032))

(get-info :version)

(assert (= (and mapNonEmpty!41032 ((_ is ValueCellFull!12384) mapValue!41032)) b!1078746))

(assert (= (and b!1078747 ((_ is ValueCellFull!12384) mapDefault!41032)) b!1078754))

(assert (= start!95552 b!1078747))

(declare-fun m!997269 () Bool)

(assert (=> b!1078748 m!997269))

(declare-fun m!997271 () Bool)

(assert (=> start!95552 m!997271))

(declare-fun m!997273 () Bool)

(assert (=> start!95552 m!997273))

(declare-fun m!997275 () Bool)

(assert (=> start!95552 m!997275))

(declare-fun m!997277 () Bool)

(assert (=> b!1078752 m!997277))

(declare-fun m!997279 () Bool)

(assert (=> b!1078756 m!997279))

(declare-fun m!997281 () Bool)

(assert (=> b!1078756 m!997281))

(declare-fun m!997283 () Bool)

(assert (=> b!1078755 m!997283))

(declare-fun m!997285 () Bool)

(assert (=> b!1078749 m!997285))

(declare-fun m!997287 () Bool)

(assert (=> b!1078745 m!997287))

(declare-fun m!997289 () Bool)

(assert (=> mapNonEmpty!41032 m!997289))

(declare-fun m!997291 () Bool)

(assert (=> b!1078753 m!997291))

(declare-fun m!997293 () Bool)

(assert (=> b!1078753 m!997293))

(check-sat (not start!95552) (not b!1078753) (not b!1078756) (not b!1078748) tp_is_empty!26187 (not mapNonEmpty!41032) (not b!1078752) (not b!1078755) (not b!1078745))
(check-sat)
