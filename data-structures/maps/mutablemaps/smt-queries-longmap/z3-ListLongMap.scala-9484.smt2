; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112550 () Bool)

(assert start!112550)

(declare-fun b_free!30909 () Bool)

(declare-fun b_next!30909 () Bool)

(assert (=> start!112550 (= b_free!30909 (not b_next!30909))))

(declare-fun tp!108365 () Bool)

(declare-fun b_and!49827 () Bool)

(assert (=> start!112550 (= tp!108365 b_and!49827)))

(declare-fun b!1334521 () Bool)

(declare-fun e!760073 () Bool)

(declare-fun tp_is_empty!36819 () Bool)

(assert (=> b!1334521 (= e!760073 tp_is_empty!36819)))

(declare-fun res!885796 () Bool)

(declare-fun e!760072 () Bool)

(assert (=> start!112550 (=> (not res!885796) (not e!760072))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112550 (= res!885796 (validMask!0 mask!1998))))

(assert (=> start!112550 e!760072))

(declare-datatypes ((V!54195 0))(
  ( (V!54196 (val!18484 Int)) )
))
(declare-datatypes ((ValueCell!17511 0))(
  ( (ValueCellFull!17511 (v!21119 V!54195)) (EmptyCell!17511) )
))
(declare-datatypes ((array!90483 0))(
  ( (array!90484 (arr!43703 (Array (_ BitVec 32) ValueCell!17511)) (size!44254 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90483)

(declare-fun e!760075 () Bool)

(declare-fun array_inv!32895 (array!90483) Bool)

(assert (=> start!112550 (and (array_inv!32895 _values!1320) e!760075)))

(assert (=> start!112550 true))

(declare-datatypes ((array!90485 0))(
  ( (array!90486 (arr!43704 (Array (_ BitVec 32) (_ BitVec 64))) (size!44255 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90485)

(declare-fun array_inv!32896 (array!90485) Bool)

(assert (=> start!112550 (array_inv!32896 _keys!1590)))

(assert (=> start!112550 tp!108365))

(assert (=> start!112550 tp_is_empty!36819))

(declare-fun b!1334522 () Bool)

(declare-fun res!885793 () Bool)

(assert (=> b!1334522 (=> (not res!885793) (not e!760072))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1334522 (= res!885793 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44255 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56902 () Bool)

(declare-fun mapRes!56902 () Bool)

(assert (=> mapIsEmpty!56902 mapRes!56902))

(declare-fun b!1334523 () Bool)

(declare-fun res!885797 () Bool)

(assert (=> b!1334523 (=> (not res!885797) (not e!760072))))

(declare-datatypes ((List!31164 0))(
  ( (Nil!31161) (Cons!31160 (h!32369 (_ BitVec 64)) (t!45435 List!31164)) )
))
(declare-fun arrayNoDuplicates!0 (array!90485 (_ BitVec 32) List!31164) Bool)

(assert (=> b!1334523 (= res!885797 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31161))))

(declare-fun b!1334524 () Bool)

(declare-fun e!760074 () Bool)

(assert (=> b!1334524 (= e!760075 (and e!760074 mapRes!56902))))

(declare-fun condMapEmpty!56902 () Bool)

(declare-fun mapDefault!56902 () ValueCell!17511)

(assert (=> b!1334524 (= condMapEmpty!56902 (= (arr!43703 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17511)) mapDefault!56902)))))

(declare-fun b!1334525 () Bool)

(assert (=> b!1334525 (= e!760072 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun lt!592301 () Bool)

(declare-fun minValue!1262 () V!54195)

(declare-fun zeroValue!1262 () V!54195)

(declare-datatypes ((tuple2!23994 0))(
  ( (tuple2!23995 (_1!12007 (_ BitVec 64)) (_2!12007 V!54195)) )
))
(declare-datatypes ((List!31165 0))(
  ( (Nil!31162) (Cons!31161 (h!32370 tuple2!23994) (t!45436 List!31165)) )
))
(declare-datatypes ((ListLongMap!21663 0))(
  ( (ListLongMap!21664 (toList!10847 List!31165)) )
))
(declare-fun contains!8947 (ListLongMap!21663 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5758 (array!90485 array!90483 (_ BitVec 32) (_ BitVec 32) V!54195 V!54195 (_ BitVec 32) Int) ListLongMap!21663)

(assert (=> b!1334525 (= lt!592301 (contains!8947 (getCurrentListMap!5758 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1334526 () Bool)

(assert (=> b!1334526 (= e!760074 tp_is_empty!36819)))

(declare-fun b!1334527 () Bool)

(declare-fun res!885794 () Bool)

(assert (=> b!1334527 (=> (not res!885794) (not e!760072))))

(assert (=> b!1334527 (= res!885794 (and (= (size!44254 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44255 _keys!1590) (size!44254 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334528 () Bool)

(declare-fun res!885795 () Bool)

(assert (=> b!1334528 (=> (not res!885795) (not e!760072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90485 (_ BitVec 32)) Bool)

(assert (=> b!1334528 (= res!885795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56902 () Bool)

(declare-fun tp!108364 () Bool)

(assert (=> mapNonEmpty!56902 (= mapRes!56902 (and tp!108364 e!760073))))

(declare-fun mapValue!56902 () ValueCell!17511)

(declare-fun mapKey!56902 () (_ BitVec 32))

(declare-fun mapRest!56902 () (Array (_ BitVec 32) ValueCell!17511))

(assert (=> mapNonEmpty!56902 (= (arr!43703 _values!1320) (store mapRest!56902 mapKey!56902 mapValue!56902))))

(assert (= (and start!112550 res!885796) b!1334527))

(assert (= (and b!1334527 res!885794) b!1334528))

(assert (= (and b!1334528 res!885795) b!1334523))

(assert (= (and b!1334523 res!885797) b!1334522))

(assert (= (and b!1334522 res!885793) b!1334525))

(assert (= (and b!1334524 condMapEmpty!56902) mapIsEmpty!56902))

(assert (= (and b!1334524 (not condMapEmpty!56902)) mapNonEmpty!56902))

(get-info :version)

(assert (= (and mapNonEmpty!56902 ((_ is ValueCellFull!17511) mapValue!56902)) b!1334521))

(assert (= (and b!1334524 ((_ is ValueCellFull!17511) mapDefault!56902)) b!1334526))

(assert (= start!112550 b!1334524))

(declare-fun m!1222903 () Bool)

(assert (=> mapNonEmpty!56902 m!1222903))

(declare-fun m!1222905 () Bool)

(assert (=> start!112550 m!1222905))

(declare-fun m!1222907 () Bool)

(assert (=> start!112550 m!1222907))

(declare-fun m!1222909 () Bool)

(assert (=> start!112550 m!1222909))

(declare-fun m!1222911 () Bool)

(assert (=> b!1334523 m!1222911))

(declare-fun m!1222913 () Bool)

(assert (=> b!1334525 m!1222913))

(assert (=> b!1334525 m!1222913))

(declare-fun m!1222915 () Bool)

(assert (=> b!1334525 m!1222915))

(declare-fun m!1222917 () Bool)

(assert (=> b!1334528 m!1222917))

(check-sat (not mapNonEmpty!56902) (not start!112550) b_and!49827 (not b_next!30909) tp_is_empty!36819 (not b!1334528) (not b!1334525) (not b!1334523))
(check-sat b_and!49827 (not b_next!30909))
