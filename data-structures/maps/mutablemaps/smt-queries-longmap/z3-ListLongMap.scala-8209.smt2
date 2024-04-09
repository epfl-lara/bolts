; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100158 () Bool)

(assert start!100158)

(declare-fun b!1193890 () Bool)

(declare-fun res!794409 () Bool)

(declare-fun e!678567 () Bool)

(assert (=> b!1193890 (=> (not res!794409) (not e!678567))))

(declare-datatypes ((array!77224 0))(
  ( (array!77225 (arr!37258 (Array (_ BitVec 32) (_ BitVec 64))) (size!37795 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77224)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77224 (_ BitVec 32)) Bool)

(assert (=> b!1193890 (= res!794409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193891 () Bool)

(declare-fun res!794411 () Bool)

(assert (=> b!1193891 (=> (not res!794411) (not e!678567))))

(declare-datatypes ((List!26409 0))(
  ( (Nil!26406) (Cons!26405 (h!27614 (_ BitVec 64)) (t!39087 List!26409)) )
))
(declare-fun arrayNoDuplicates!0 (array!77224 (_ BitVec 32) List!26409) Bool)

(assert (=> b!1193891 (= res!794411 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26406))))

(declare-fun b!1193892 () Bool)

(declare-fun e!678569 () Bool)

(declare-fun e!678568 () Bool)

(declare-fun mapRes!47174 () Bool)

(assert (=> b!1193892 (= e!678569 (and e!678568 mapRes!47174))))

(declare-fun condMapEmpty!47174 () Bool)

(declare-datatypes ((V!45435 0))(
  ( (V!45436 (val!15172 Int)) )
))
(declare-datatypes ((ValueCell!14406 0))(
  ( (ValueCellFull!14406 (v!17811 V!45435)) (EmptyCell!14406) )
))
(declare-datatypes ((array!77226 0))(
  ( (array!77227 (arr!37259 (Array (_ BitVec 32) ValueCell!14406)) (size!37796 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77226)

(declare-fun mapDefault!47174 () ValueCell!14406)

(assert (=> b!1193892 (= condMapEmpty!47174 (= (arr!37259 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14406)) mapDefault!47174)))))

(declare-fun b!1193893 () Bool)

(declare-fun res!794413 () Bool)

(assert (=> b!1193893 (=> (not res!794413) (not e!678567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193893 (= res!794413 (validMask!0 mask!1564))))

(declare-fun b!1193894 () Bool)

(declare-fun res!794412 () Bool)

(assert (=> b!1193894 (=> (not res!794412) (not e!678567))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193894 (= res!794412 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37795 _keys!1208))))))

(declare-fun b!1193895 () Bool)

(assert (=> b!1193895 (= e!678567 false)))

(declare-fun lt!542646 () Bool)

(assert (=> b!1193895 (= lt!542646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!77225 (store (arr!37258 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37795 _keys!1208)) mask!1564))))

(declare-fun mapIsEmpty!47174 () Bool)

(assert (=> mapIsEmpty!47174 mapRes!47174))

(declare-fun b!1193896 () Bool)

(declare-fun res!794407 () Bool)

(assert (=> b!1193896 (=> (not res!794407) (not e!678567))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193896 (= res!794407 (validKeyInArray!0 k0!934))))

(declare-fun b!1193897 () Bool)

(declare-fun tp_is_empty!30231 () Bool)

(assert (=> b!1193897 (= e!678568 tp_is_empty!30231)))

(declare-fun b!1193898 () Bool)

(declare-fun res!794408 () Bool)

(assert (=> b!1193898 (=> (not res!794408) (not e!678567))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1193898 (= res!794408 (and (= (size!37796 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37795 _keys!1208) (size!37796 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193899 () Bool)

(declare-fun e!678571 () Bool)

(assert (=> b!1193899 (= e!678571 tp_is_empty!30231)))

(declare-fun b!1193900 () Bool)

(declare-fun res!794406 () Bool)

(assert (=> b!1193900 (=> (not res!794406) (not e!678567))))

(assert (=> b!1193900 (= res!794406 (= (select (arr!37258 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!47174 () Bool)

(declare-fun tp!89785 () Bool)

(assert (=> mapNonEmpty!47174 (= mapRes!47174 (and tp!89785 e!678571))))

(declare-fun mapRest!47174 () (Array (_ BitVec 32) ValueCell!14406))

(declare-fun mapValue!47174 () ValueCell!14406)

(declare-fun mapKey!47174 () (_ BitVec 32))

(assert (=> mapNonEmpty!47174 (= (arr!37259 _values!996) (store mapRest!47174 mapKey!47174 mapValue!47174))))

(declare-fun res!794410 () Bool)

(assert (=> start!100158 (=> (not res!794410) (not e!678567))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100158 (= res!794410 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37795 _keys!1208))))))

(assert (=> start!100158 e!678567))

(declare-fun array_inv!28304 (array!77224) Bool)

(assert (=> start!100158 (array_inv!28304 _keys!1208)))

(assert (=> start!100158 true))

(declare-fun array_inv!28305 (array!77226) Bool)

(assert (=> start!100158 (and (array_inv!28305 _values!996) e!678569)))

(assert (= (and start!100158 res!794410) b!1193893))

(assert (= (and b!1193893 res!794413) b!1193898))

(assert (= (and b!1193898 res!794408) b!1193890))

(assert (= (and b!1193890 res!794409) b!1193891))

(assert (= (and b!1193891 res!794411) b!1193894))

(assert (= (and b!1193894 res!794412) b!1193896))

(assert (= (and b!1193896 res!794407) b!1193900))

(assert (= (and b!1193900 res!794406) b!1193895))

(assert (= (and b!1193892 condMapEmpty!47174) mapIsEmpty!47174))

(assert (= (and b!1193892 (not condMapEmpty!47174)) mapNonEmpty!47174))

(get-info :version)

(assert (= (and mapNonEmpty!47174 ((_ is ValueCellFull!14406) mapValue!47174)) b!1193899))

(assert (= (and b!1193892 ((_ is ValueCellFull!14406) mapDefault!47174)) b!1193897))

(assert (= start!100158 b!1193892))

(declare-fun m!1102045 () Bool)

(assert (=> b!1193891 m!1102045))

(declare-fun m!1102047 () Bool)

(assert (=> start!100158 m!1102047))

(declare-fun m!1102049 () Bool)

(assert (=> start!100158 m!1102049))

(declare-fun m!1102051 () Bool)

(assert (=> b!1193890 m!1102051))

(declare-fun m!1102053 () Bool)

(assert (=> b!1193895 m!1102053))

(declare-fun m!1102055 () Bool)

(assert (=> b!1193895 m!1102055))

(declare-fun m!1102057 () Bool)

(assert (=> b!1193893 m!1102057))

(declare-fun m!1102059 () Bool)

(assert (=> mapNonEmpty!47174 m!1102059))

(declare-fun m!1102061 () Bool)

(assert (=> b!1193896 m!1102061))

(declare-fun m!1102063 () Bool)

(assert (=> b!1193900 m!1102063))

(check-sat tp_is_empty!30231 (not b!1193896) (not start!100158) (not mapNonEmpty!47174) (not b!1193893) (not b!1193895) (not b!1193891) (not b!1193890))
(check-sat)
