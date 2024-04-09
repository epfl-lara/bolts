; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97660 () Bool)

(assert start!97660)

(declare-fun mapIsEmpty!43600 () Bool)

(declare-fun mapRes!43600 () Bool)

(assert (=> mapIsEmpty!43600 mapRes!43600))

(declare-fun b!1115380 () Bool)

(declare-fun res!744709 () Bool)

(declare-fun e!635641 () Bool)

(assert (=> b!1115380 (=> (not res!744709) (not e!635641))))

(declare-datatypes ((array!72552 0))(
  ( (array!72553 (arr!34925 (Array (_ BitVec 32) (_ BitVec 64))) (size!35462 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72552)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72552 (_ BitVec 32)) Bool)

(assert (=> b!1115380 (= res!744709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115381 () Bool)

(declare-fun res!744711 () Bool)

(assert (=> b!1115381 (=> (not res!744711) (not e!635641))))

(declare-datatypes ((List!24454 0))(
  ( (Nil!24451) (Cons!24450 (h!25659 (_ BitVec 64)) (t!34942 List!24454)) )
))
(declare-fun arrayNoDuplicates!0 (array!72552 (_ BitVec 32) List!24454) Bool)

(assert (=> b!1115381 (= res!744711 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24451))))

(declare-fun b!1115382 () Bool)

(declare-fun e!635643 () Bool)

(declare-fun tp_is_empty!27855 () Bool)

(assert (=> b!1115382 (= e!635643 tp_is_empty!27855)))

(declare-fun b!1115383 () Bool)

(declare-fun res!744705 () Bool)

(declare-fun e!635644 () Bool)

(assert (=> b!1115383 (=> (not res!744705) (not e!635644))))

(declare-fun lt!496952 () array!72552)

(assert (=> b!1115383 (= res!744705 (arrayNoDuplicates!0 lt!496952 #b00000000000000000000000000000000 Nil!24451))))

(declare-fun b!1115384 () Bool)

(declare-fun res!744708 () Bool)

(assert (=> b!1115384 (=> (not res!744708) (not e!635641))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115384 (= res!744708 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35462 _keys!1208))))))

(declare-fun b!1115385 () Bool)

(declare-fun res!744703 () Bool)

(assert (=> b!1115385 (=> (not res!744703) (not e!635641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115385 (= res!744703 (validMask!0 mask!1564))))

(declare-fun b!1115386 () Bool)

(declare-fun res!744702 () Bool)

(assert (=> b!1115386 (=> (not res!744702) (not e!635641))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115386 (= res!744702 (validKeyInArray!0 k0!934))))

(declare-fun b!1115387 () Bool)

(assert (=> b!1115387 (= e!635641 e!635644)))

(declare-fun res!744710 () Bool)

(assert (=> b!1115387 (=> (not res!744710) (not e!635644))))

(assert (=> b!1115387 (= res!744710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496952 mask!1564))))

(assert (=> b!1115387 (= lt!496952 (array!72553 (store (arr!34925 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35462 _keys!1208)))))

(declare-fun b!1115388 () Bool)

(declare-fun e!635642 () Bool)

(declare-fun e!635645 () Bool)

(assert (=> b!1115388 (= e!635642 (and e!635645 mapRes!43600))))

(declare-fun condMapEmpty!43600 () Bool)

(declare-datatypes ((V!42267 0))(
  ( (V!42268 (val!13984 Int)) )
))
(declare-datatypes ((ValueCell!13218 0))(
  ( (ValueCellFull!13218 (v!16618 V!42267)) (EmptyCell!13218) )
))
(declare-datatypes ((array!72554 0))(
  ( (array!72555 (arr!34926 (Array (_ BitVec 32) ValueCell!13218)) (size!35463 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72554)

(declare-fun mapDefault!43600 () ValueCell!13218)

(assert (=> b!1115388 (= condMapEmpty!43600 (= (arr!34926 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13218)) mapDefault!43600)))))

(declare-fun b!1115389 () Bool)

(assert (=> b!1115389 (= e!635644 (not true))))

(declare-fun arrayContainsKey!0 (array!72552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115389 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36507 0))(
  ( (Unit!36508) )
))
(declare-fun lt!496953 () Unit!36507)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72552 (_ BitVec 64) (_ BitVec 32)) Unit!36507)

(assert (=> b!1115389 (= lt!496953 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!744706 () Bool)

(assert (=> start!97660 (=> (not res!744706) (not e!635641))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97660 (= res!744706 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35462 _keys!1208))))))

(assert (=> start!97660 e!635641))

(declare-fun array_inv!26708 (array!72552) Bool)

(assert (=> start!97660 (array_inv!26708 _keys!1208)))

(assert (=> start!97660 true))

(declare-fun array_inv!26709 (array!72554) Bool)

(assert (=> start!97660 (and (array_inv!26709 _values!996) e!635642)))

(declare-fun b!1115390 () Bool)

(declare-fun res!744704 () Bool)

(assert (=> b!1115390 (=> (not res!744704) (not e!635641))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115390 (= res!744704 (and (= (size!35463 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35462 _keys!1208) (size!35463 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115391 () Bool)

(assert (=> b!1115391 (= e!635645 tp_is_empty!27855)))

(declare-fun mapNonEmpty!43600 () Bool)

(declare-fun tp!82845 () Bool)

(assert (=> mapNonEmpty!43600 (= mapRes!43600 (and tp!82845 e!635643))))

(declare-fun mapRest!43600 () (Array (_ BitVec 32) ValueCell!13218))

(declare-fun mapValue!43600 () ValueCell!13218)

(declare-fun mapKey!43600 () (_ BitVec 32))

(assert (=> mapNonEmpty!43600 (= (arr!34926 _values!996) (store mapRest!43600 mapKey!43600 mapValue!43600))))

(declare-fun b!1115392 () Bool)

(declare-fun res!744707 () Bool)

(assert (=> b!1115392 (=> (not res!744707) (not e!635641))))

(assert (=> b!1115392 (= res!744707 (= (select (arr!34925 _keys!1208) i!673) k0!934))))

(assert (= (and start!97660 res!744706) b!1115385))

(assert (= (and b!1115385 res!744703) b!1115390))

(assert (= (and b!1115390 res!744704) b!1115380))

(assert (= (and b!1115380 res!744709) b!1115381))

(assert (= (and b!1115381 res!744711) b!1115384))

(assert (= (and b!1115384 res!744708) b!1115386))

(assert (= (and b!1115386 res!744702) b!1115392))

(assert (= (and b!1115392 res!744707) b!1115387))

(assert (= (and b!1115387 res!744710) b!1115383))

(assert (= (and b!1115383 res!744705) b!1115389))

(assert (= (and b!1115388 condMapEmpty!43600) mapIsEmpty!43600))

(assert (= (and b!1115388 (not condMapEmpty!43600)) mapNonEmpty!43600))

(get-info :version)

(assert (= (and mapNonEmpty!43600 ((_ is ValueCellFull!13218) mapValue!43600)) b!1115382))

(assert (= (and b!1115388 ((_ is ValueCellFull!13218) mapDefault!43600)) b!1115391))

(assert (= start!97660 b!1115388))

(declare-fun m!1032045 () Bool)

(assert (=> b!1115392 m!1032045))

(declare-fun m!1032047 () Bool)

(assert (=> b!1115381 m!1032047))

(declare-fun m!1032049 () Bool)

(assert (=> start!97660 m!1032049))

(declare-fun m!1032051 () Bool)

(assert (=> start!97660 m!1032051))

(declare-fun m!1032053 () Bool)

(assert (=> b!1115380 m!1032053))

(declare-fun m!1032055 () Bool)

(assert (=> b!1115386 m!1032055))

(declare-fun m!1032057 () Bool)

(assert (=> b!1115387 m!1032057))

(declare-fun m!1032059 () Bool)

(assert (=> b!1115387 m!1032059))

(declare-fun m!1032061 () Bool)

(assert (=> mapNonEmpty!43600 m!1032061))

(declare-fun m!1032063 () Bool)

(assert (=> b!1115385 m!1032063))

(declare-fun m!1032065 () Bool)

(assert (=> b!1115383 m!1032065))

(declare-fun m!1032067 () Bool)

(assert (=> b!1115389 m!1032067))

(declare-fun m!1032069 () Bool)

(assert (=> b!1115389 m!1032069))

(check-sat (not start!97660) (not b!1115389) (not b!1115380) (not b!1115381) (not b!1115386) (not b!1115385) (not mapNonEmpty!43600) (not b!1115387) tp_is_empty!27855 (not b!1115383))
(check-sat)
