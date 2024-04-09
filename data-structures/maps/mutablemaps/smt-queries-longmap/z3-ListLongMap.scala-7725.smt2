; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97074 () Bool)

(assert start!97074)

(declare-fun b!1103697 () Bool)

(declare-fun res!736410 () Bool)

(declare-fun e!630094 () Bool)

(assert (=> b!1103697 (=> (not res!736410) (not e!630094))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103697 (= res!736410 (validMask!0 mask!1564))))

(declare-fun b!1103698 () Bool)

(declare-fun res!736409 () Bool)

(assert (=> b!1103698 (=> (not res!736409) (not e!630094))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71528 0))(
  ( (array!71529 (arr!34417 (Array (_ BitVec 32) (_ BitVec 64))) (size!34954 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71528)

(assert (=> b!1103698 (= res!736409 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34954 _keys!1208))))))

(declare-fun mapIsEmpty!42796 () Bool)

(declare-fun mapRes!42796 () Bool)

(assert (=> mapIsEmpty!42796 mapRes!42796))

(declare-fun b!1103699 () Bool)

(declare-fun e!630095 () Bool)

(declare-fun e!630092 () Bool)

(assert (=> b!1103699 (= e!630095 (and e!630092 mapRes!42796))))

(declare-fun condMapEmpty!42796 () Bool)

(declare-datatypes ((V!41563 0))(
  ( (V!41564 (val!13720 Int)) )
))
(declare-datatypes ((ValueCell!12954 0))(
  ( (ValueCellFull!12954 (v!16353 V!41563)) (EmptyCell!12954) )
))
(declare-datatypes ((array!71530 0))(
  ( (array!71531 (arr!34418 (Array (_ BitVec 32) ValueCell!12954)) (size!34955 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71530)

(declare-fun mapDefault!42796 () ValueCell!12954)

(assert (=> b!1103699 (= condMapEmpty!42796 (= (arr!34418 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12954)) mapDefault!42796)))))

(declare-fun b!1103700 () Bool)

(declare-fun res!736414 () Bool)

(assert (=> b!1103700 (=> (not res!736414) (not e!630094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71528 (_ BitVec 32)) Bool)

(assert (=> b!1103700 (= res!736414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103701 () Bool)

(declare-fun e!630093 () Bool)

(declare-fun tp_is_empty!27327 () Bool)

(assert (=> b!1103701 (= e!630093 tp_is_empty!27327)))

(declare-fun res!736412 () Bool)

(assert (=> start!97074 (=> (not res!736412) (not e!630094))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97074 (= res!736412 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34954 _keys!1208))))))

(assert (=> start!97074 e!630094))

(declare-fun array_inv!26356 (array!71528) Bool)

(assert (=> start!97074 (array_inv!26356 _keys!1208)))

(assert (=> start!97074 true))

(declare-fun array_inv!26357 (array!71530) Bool)

(assert (=> start!97074 (and (array_inv!26357 _values!996) e!630095)))

(declare-fun b!1103702 () Bool)

(assert (=> b!1103702 (= e!630092 tp_is_empty!27327)))

(declare-fun b!1103703 () Bool)

(declare-fun res!736411 () Bool)

(assert (=> b!1103703 (=> (not res!736411) (not e!630094))))

(declare-datatypes ((List!24166 0))(
  ( (Nil!24163) (Cons!24162 (h!25371 (_ BitVec 64)) (t!34438 List!24166)) )
))
(declare-fun arrayNoDuplicates!0 (array!71528 (_ BitVec 32) List!24166) Bool)

(assert (=> b!1103703 (= res!736411 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24163))))

(declare-fun b!1103704 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1103704 (= e!630094 (and (= (select (arr!34417 _keys!1208) i!673) k0!934) (= (size!34954 _keys!1208) (bvadd #b00000000000000000000000000000001 mask!1564)) (bvsgt #b00000000000000000000000000000000 (size!34954 _keys!1208))))))

(declare-fun b!1103705 () Bool)

(declare-fun res!736415 () Bool)

(assert (=> b!1103705 (=> (not res!736415) (not e!630094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103705 (= res!736415 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!42796 () Bool)

(declare-fun tp!81717 () Bool)

(assert (=> mapNonEmpty!42796 (= mapRes!42796 (and tp!81717 e!630093))))

(declare-fun mapKey!42796 () (_ BitVec 32))

(declare-fun mapRest!42796 () (Array (_ BitVec 32) ValueCell!12954))

(declare-fun mapValue!42796 () ValueCell!12954)

(assert (=> mapNonEmpty!42796 (= (arr!34418 _values!996) (store mapRest!42796 mapKey!42796 mapValue!42796))))

(declare-fun b!1103706 () Bool)

(declare-fun res!736413 () Bool)

(assert (=> b!1103706 (=> (not res!736413) (not e!630094))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103706 (= res!736413 (and (= (size!34955 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34954 _keys!1208) (size!34955 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!97074 res!736412) b!1103697))

(assert (= (and b!1103697 res!736410) b!1103706))

(assert (= (and b!1103706 res!736413) b!1103700))

(assert (= (and b!1103700 res!736414) b!1103703))

(assert (= (and b!1103703 res!736411) b!1103698))

(assert (= (and b!1103698 res!736409) b!1103705))

(assert (= (and b!1103705 res!736415) b!1103704))

(assert (= (and b!1103699 condMapEmpty!42796) mapIsEmpty!42796))

(assert (= (and b!1103699 (not condMapEmpty!42796)) mapNonEmpty!42796))

(get-info :version)

(assert (= (and mapNonEmpty!42796 ((_ is ValueCellFull!12954) mapValue!42796)) b!1103701))

(assert (= (and b!1103699 ((_ is ValueCellFull!12954) mapDefault!42796)) b!1103702))

(assert (= start!97074 b!1103699))

(declare-fun m!1023855 () Bool)

(assert (=> b!1103705 m!1023855))

(declare-fun m!1023857 () Bool)

(assert (=> mapNonEmpty!42796 m!1023857))

(declare-fun m!1023859 () Bool)

(assert (=> start!97074 m!1023859))

(declare-fun m!1023861 () Bool)

(assert (=> start!97074 m!1023861))

(declare-fun m!1023863 () Bool)

(assert (=> b!1103704 m!1023863))

(declare-fun m!1023865 () Bool)

(assert (=> b!1103697 m!1023865))

(declare-fun m!1023867 () Bool)

(assert (=> b!1103700 m!1023867))

(declare-fun m!1023869 () Bool)

(assert (=> b!1103703 m!1023869))

(check-sat (not b!1103697) (not mapNonEmpty!42796) tp_is_empty!27327 (not b!1103705) (not b!1103703) (not start!97074) (not b!1103700))
(check-sat)
