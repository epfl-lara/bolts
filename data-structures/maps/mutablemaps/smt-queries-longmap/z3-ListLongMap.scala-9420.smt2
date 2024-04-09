; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112166 () Bool)

(assert start!112166)

(declare-fun b!1327926 () Bool)

(declare-fun e!757112 () Bool)

(assert (=> b!1327926 (= e!757112 false)))

(declare-fun lt!590726 () Bool)

(declare-datatypes ((array!89735 0))(
  ( (array!89736 (arr!43329 (Array (_ BitVec 32) (_ BitVec 64))) (size!43880 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89735)

(declare-datatypes ((List!30885 0))(
  ( (Nil!30882) (Cons!30881 (h!32090 (_ BitVec 64)) (t!44898 List!30885)) )
))
(declare-fun arrayNoDuplicates!0 (array!89735 (_ BitVec 32) List!30885) Bool)

(assert (=> b!1327926 (= lt!590726 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30882))))

(declare-fun b!1327927 () Bool)

(declare-fun res!881185 () Bool)

(assert (=> b!1327927 (=> (not res!881185) (not e!757112))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89735 (_ BitVec 32)) Bool)

(assert (=> b!1327927 (= res!881185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327928 () Bool)

(declare-fun res!881184 () Bool)

(assert (=> b!1327928 (=> (not res!881184) (not e!757112))))

(declare-datatypes ((V!53683 0))(
  ( (V!53684 (val!18292 Int)) )
))
(declare-datatypes ((ValueCell!17319 0))(
  ( (ValueCellFull!17319 (v!20927 V!53683)) (EmptyCell!17319) )
))
(declare-datatypes ((array!89737 0))(
  ( (array!89738 (arr!43330 (Array (_ BitVec 32) ValueCell!17319)) (size!43881 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89737)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1327928 (= res!881184 (and (= (size!43881 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43880 _keys!1590) (size!43881 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327929 () Bool)

(declare-fun e!757114 () Bool)

(declare-fun e!757113 () Bool)

(declare-fun mapRes!56326 () Bool)

(assert (=> b!1327929 (= e!757114 (and e!757113 mapRes!56326))))

(declare-fun condMapEmpty!56326 () Bool)

(declare-fun mapDefault!56326 () ValueCell!17319)

(assert (=> b!1327929 (= condMapEmpty!56326 (= (arr!43330 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17319)) mapDefault!56326)))))

(declare-fun mapNonEmpty!56326 () Bool)

(declare-fun tp!107234 () Bool)

(declare-fun e!757111 () Bool)

(assert (=> mapNonEmpty!56326 (= mapRes!56326 (and tp!107234 e!757111))))

(declare-fun mapRest!56326 () (Array (_ BitVec 32) ValueCell!17319))

(declare-fun mapValue!56326 () ValueCell!17319)

(declare-fun mapKey!56326 () (_ BitVec 32))

(assert (=> mapNonEmpty!56326 (= (arr!43330 _values!1320) (store mapRest!56326 mapKey!56326 mapValue!56326))))

(declare-fun b!1327930 () Bool)

(declare-fun tp_is_empty!36435 () Bool)

(assert (=> b!1327930 (= e!757113 tp_is_empty!36435)))

(declare-fun b!1327931 () Bool)

(assert (=> b!1327931 (= e!757111 tp_is_empty!36435)))

(declare-fun mapIsEmpty!56326 () Bool)

(assert (=> mapIsEmpty!56326 mapRes!56326))

(declare-fun res!881186 () Bool)

(assert (=> start!112166 (=> (not res!881186) (not e!757112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112166 (= res!881186 (validMask!0 mask!1998))))

(assert (=> start!112166 e!757112))

(assert (=> start!112166 true))

(declare-fun array_inv!32645 (array!89737) Bool)

(assert (=> start!112166 (and (array_inv!32645 _values!1320) e!757114)))

(declare-fun array_inv!32646 (array!89735) Bool)

(assert (=> start!112166 (array_inv!32646 _keys!1590)))

(assert (= (and start!112166 res!881186) b!1327928))

(assert (= (and b!1327928 res!881184) b!1327927))

(assert (= (and b!1327927 res!881185) b!1327926))

(assert (= (and b!1327929 condMapEmpty!56326) mapIsEmpty!56326))

(assert (= (and b!1327929 (not condMapEmpty!56326)) mapNonEmpty!56326))

(get-info :version)

(assert (= (and mapNonEmpty!56326 ((_ is ValueCellFull!17319) mapValue!56326)) b!1327931))

(assert (= (and b!1327929 ((_ is ValueCellFull!17319) mapDefault!56326)) b!1327930))

(assert (= start!112166 b!1327929))

(declare-fun m!1217085 () Bool)

(assert (=> b!1327926 m!1217085))

(declare-fun m!1217087 () Bool)

(assert (=> b!1327927 m!1217087))

(declare-fun m!1217089 () Bool)

(assert (=> mapNonEmpty!56326 m!1217089))

(declare-fun m!1217091 () Bool)

(assert (=> start!112166 m!1217091))

(declare-fun m!1217093 () Bool)

(assert (=> start!112166 m!1217093))

(declare-fun m!1217095 () Bool)

(assert (=> start!112166 m!1217095))

(check-sat (not b!1327926) (not start!112166) (not mapNonEmpty!56326) tp_is_empty!36435 (not b!1327927))
(check-sat)
