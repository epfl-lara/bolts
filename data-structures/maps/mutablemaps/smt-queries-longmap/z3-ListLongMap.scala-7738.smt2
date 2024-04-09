; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97210 () Bool)

(assert start!97210)

(declare-fun mapIsEmpty!42925 () Bool)

(declare-fun mapRes!42925 () Bool)

(assert (=> mapIsEmpty!42925 mapRes!42925))

(declare-fun b!1105357 () Bool)

(declare-fun e!630914 () Bool)

(assert (=> b!1105357 (= e!630914 (not true))))

(declare-datatypes ((array!71684 0))(
  ( (array!71685 (arr!34491 (Array (_ BitVec 32) (_ BitVec 64))) (size!35028 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71684)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105357 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36209 0))(
  ( (Unit!36210) )
))
(declare-fun lt!495278 () Unit!36209)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71684 (_ BitVec 64) (_ BitVec 32)) Unit!36209)

(assert (=> b!1105357 (= lt!495278 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1105358 () Bool)

(declare-fun res!737635 () Bool)

(declare-fun e!630912 () Bool)

(assert (=> b!1105358 (=> (not res!737635) (not e!630912))))

(assert (=> b!1105358 (= res!737635 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35028 _keys!1208))))))

(declare-fun b!1105359 () Bool)

(assert (=> b!1105359 (= e!630912 e!630914)))

(declare-fun res!737628 () Bool)

(assert (=> b!1105359 (=> (not res!737628) (not e!630914))))

(declare-fun lt!495279 () array!71684)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71684 (_ BitVec 32)) Bool)

(assert (=> b!1105359 (= res!737628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495279 mask!1564))))

(assert (=> b!1105359 (= lt!495279 (array!71685 (store (arr!34491 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35028 _keys!1208)))))

(declare-fun b!1105360 () Bool)

(declare-fun res!737630 () Bool)

(assert (=> b!1105360 (=> (not res!737630) (not e!630914))))

(declare-datatypes ((List!24194 0))(
  ( (Nil!24191) (Cons!24190 (h!25399 (_ BitVec 64)) (t!34466 List!24194)) )
))
(declare-fun arrayNoDuplicates!0 (array!71684 (_ BitVec 32) List!24194) Bool)

(assert (=> b!1105360 (= res!737630 (arrayNoDuplicates!0 lt!495279 #b00000000000000000000000000000000 Nil!24191))))

(declare-fun b!1105361 () Bool)

(declare-fun res!737631 () Bool)

(assert (=> b!1105361 (=> (not res!737631) (not e!630912))))

(assert (=> b!1105361 (= res!737631 (= (select (arr!34491 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!42925 () Bool)

(declare-fun tp!81846 () Bool)

(declare-fun e!630913 () Bool)

(assert (=> mapNonEmpty!42925 (= mapRes!42925 (and tp!81846 e!630913))))

(declare-datatypes ((V!41667 0))(
  ( (V!41668 (val!13759 Int)) )
))
(declare-datatypes ((ValueCell!12993 0))(
  ( (ValueCellFull!12993 (v!16393 V!41667)) (EmptyCell!12993) )
))
(declare-fun mapRest!42925 () (Array (_ BitVec 32) ValueCell!12993))

(declare-datatypes ((array!71686 0))(
  ( (array!71687 (arr!34492 (Array (_ BitVec 32) ValueCell!12993)) (size!35029 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71686)

(declare-fun mapKey!42925 () (_ BitVec 32))

(declare-fun mapValue!42925 () ValueCell!12993)

(assert (=> mapNonEmpty!42925 (= (arr!34492 _values!996) (store mapRest!42925 mapKey!42925 mapValue!42925))))

(declare-fun res!737632 () Bool)

(assert (=> start!97210 (=> (not res!737632) (not e!630912))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97210 (= res!737632 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35028 _keys!1208))))))

(assert (=> start!97210 e!630912))

(declare-fun array_inv!26410 (array!71684) Bool)

(assert (=> start!97210 (array_inv!26410 _keys!1208)))

(assert (=> start!97210 true))

(declare-fun e!630915 () Bool)

(declare-fun array_inv!26411 (array!71686) Bool)

(assert (=> start!97210 (and (array_inv!26411 _values!996) e!630915)))

(declare-fun b!1105362 () Bool)

(declare-fun e!630917 () Bool)

(assert (=> b!1105362 (= e!630915 (and e!630917 mapRes!42925))))

(declare-fun condMapEmpty!42925 () Bool)

(declare-fun mapDefault!42925 () ValueCell!12993)

(assert (=> b!1105362 (= condMapEmpty!42925 (= (arr!34492 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12993)) mapDefault!42925)))))

(declare-fun b!1105363 () Bool)

(declare-fun tp_is_empty!27405 () Bool)

(assert (=> b!1105363 (= e!630917 tp_is_empty!27405)))

(declare-fun b!1105364 () Bool)

(declare-fun res!737634 () Bool)

(assert (=> b!1105364 (=> (not res!737634) (not e!630912))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1105364 (= res!737634 (and (= (size!35029 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35028 _keys!1208) (size!35029 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105365 () Bool)

(declare-fun res!737637 () Bool)

(assert (=> b!1105365 (=> (not res!737637) (not e!630912))))

(assert (=> b!1105365 (= res!737637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105366 () Bool)

(declare-fun res!737629 () Bool)

(assert (=> b!1105366 (=> (not res!737629) (not e!630912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105366 (= res!737629 (validKeyInArray!0 k0!934))))

(declare-fun b!1105367 () Bool)

(assert (=> b!1105367 (= e!630913 tp_is_empty!27405)))

(declare-fun b!1105368 () Bool)

(declare-fun res!737633 () Bool)

(assert (=> b!1105368 (=> (not res!737633) (not e!630912))))

(assert (=> b!1105368 (= res!737633 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24191))))

(declare-fun b!1105369 () Bool)

(declare-fun res!737636 () Bool)

(assert (=> b!1105369 (=> (not res!737636) (not e!630912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105369 (= res!737636 (validMask!0 mask!1564))))

(assert (= (and start!97210 res!737632) b!1105369))

(assert (= (and b!1105369 res!737636) b!1105364))

(assert (= (and b!1105364 res!737634) b!1105365))

(assert (= (and b!1105365 res!737637) b!1105368))

(assert (= (and b!1105368 res!737633) b!1105358))

(assert (= (and b!1105358 res!737635) b!1105366))

(assert (= (and b!1105366 res!737629) b!1105361))

(assert (= (and b!1105361 res!737631) b!1105359))

(assert (= (and b!1105359 res!737628) b!1105360))

(assert (= (and b!1105360 res!737630) b!1105357))

(assert (= (and b!1105362 condMapEmpty!42925) mapIsEmpty!42925))

(assert (= (and b!1105362 (not condMapEmpty!42925)) mapNonEmpty!42925))

(get-info :version)

(assert (= (and mapNonEmpty!42925 ((_ is ValueCellFull!12993) mapValue!42925)) b!1105367))

(assert (= (and b!1105362 ((_ is ValueCellFull!12993) mapDefault!42925)) b!1105363))

(assert (= start!97210 b!1105362))

(declare-fun m!1024899 () Bool)

(assert (=> b!1105359 m!1024899))

(declare-fun m!1024901 () Bool)

(assert (=> b!1105359 m!1024901))

(declare-fun m!1024903 () Bool)

(assert (=> b!1105357 m!1024903))

(declare-fun m!1024905 () Bool)

(assert (=> b!1105357 m!1024905))

(declare-fun m!1024907 () Bool)

(assert (=> b!1105365 m!1024907))

(declare-fun m!1024909 () Bool)

(assert (=> mapNonEmpty!42925 m!1024909))

(declare-fun m!1024911 () Bool)

(assert (=> b!1105366 m!1024911))

(declare-fun m!1024913 () Bool)

(assert (=> b!1105368 m!1024913))

(declare-fun m!1024915 () Bool)

(assert (=> b!1105369 m!1024915))

(declare-fun m!1024917 () Bool)

(assert (=> start!97210 m!1024917))

(declare-fun m!1024919 () Bool)

(assert (=> start!97210 m!1024919))

(declare-fun m!1024921 () Bool)

(assert (=> b!1105361 m!1024921))

(declare-fun m!1024923 () Bool)

(assert (=> b!1105360 m!1024923))

(check-sat (not b!1105368) (not b!1105369) (not b!1105366) (not b!1105360) tp_is_empty!27405 (not b!1105365) (not b!1105357) (not mapNonEmpty!42925) (not b!1105359) (not start!97210))
(check-sat)
