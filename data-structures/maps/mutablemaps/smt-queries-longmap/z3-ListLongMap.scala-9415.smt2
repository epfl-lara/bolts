; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112136 () Bool)

(assert start!112136)

(declare-fun b!1327656 () Bool)

(declare-fun res!881050 () Bool)

(declare-fun e!756886 () Bool)

(assert (=> b!1327656 (=> (not res!881050) (not e!756886))))

(declare-datatypes ((V!53643 0))(
  ( (V!53644 (val!18277 Int)) )
))
(declare-datatypes ((ValueCell!17304 0))(
  ( (ValueCellFull!17304 (v!20912 V!53643)) (EmptyCell!17304) )
))
(declare-datatypes ((array!89675 0))(
  ( (array!89676 (arr!43299 (Array (_ BitVec 32) ValueCell!17304)) (size!43850 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89675)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89677 0))(
  ( (array!89678 (arr!43300 (Array (_ BitVec 32) (_ BitVec 64))) (size!43851 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89677)

(assert (=> b!1327656 (= res!881050 (and (= (size!43850 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43851 _keys!1590) (size!43850 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!881051 () Bool)

(assert (=> start!112136 (=> (not res!881051) (not e!756886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112136 (= res!881051 (validMask!0 mask!1998))))

(assert (=> start!112136 e!756886))

(assert (=> start!112136 true))

(declare-fun e!756888 () Bool)

(declare-fun array_inv!32623 (array!89675) Bool)

(assert (=> start!112136 (and (array_inv!32623 _values!1320) e!756888)))

(declare-fun array_inv!32624 (array!89677) Bool)

(assert (=> start!112136 (array_inv!32624 _keys!1590)))

(declare-fun mapIsEmpty!56281 () Bool)

(declare-fun mapRes!56281 () Bool)

(assert (=> mapIsEmpty!56281 mapRes!56281))

(declare-fun b!1327657 () Bool)

(declare-fun res!881049 () Bool)

(assert (=> b!1327657 (=> (not res!881049) (not e!756886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89677 (_ BitVec 32)) Bool)

(assert (=> b!1327657 (= res!881049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327658 () Bool)

(assert (=> b!1327658 (= e!756886 false)))

(declare-fun lt!590681 () Bool)

(declare-datatypes ((List!30874 0))(
  ( (Nil!30871) (Cons!30870 (h!32079 (_ BitVec 64)) (t!44887 List!30874)) )
))
(declare-fun arrayNoDuplicates!0 (array!89677 (_ BitVec 32) List!30874) Bool)

(assert (=> b!1327658 (= lt!590681 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30871))))

(declare-fun mapNonEmpty!56281 () Bool)

(declare-fun tp!107189 () Bool)

(declare-fun e!756885 () Bool)

(assert (=> mapNonEmpty!56281 (= mapRes!56281 (and tp!107189 e!756885))))

(declare-fun mapValue!56281 () ValueCell!17304)

(declare-fun mapKey!56281 () (_ BitVec 32))

(declare-fun mapRest!56281 () (Array (_ BitVec 32) ValueCell!17304))

(assert (=> mapNonEmpty!56281 (= (arr!43299 _values!1320) (store mapRest!56281 mapKey!56281 mapValue!56281))))

(declare-fun b!1327659 () Bool)

(declare-fun tp_is_empty!36405 () Bool)

(assert (=> b!1327659 (= e!756885 tp_is_empty!36405)))

(declare-fun b!1327660 () Bool)

(declare-fun e!756887 () Bool)

(assert (=> b!1327660 (= e!756887 tp_is_empty!36405)))

(declare-fun b!1327661 () Bool)

(assert (=> b!1327661 (= e!756888 (and e!756887 mapRes!56281))))

(declare-fun condMapEmpty!56281 () Bool)

(declare-fun mapDefault!56281 () ValueCell!17304)

(assert (=> b!1327661 (= condMapEmpty!56281 (= (arr!43299 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17304)) mapDefault!56281)))))

(assert (= (and start!112136 res!881051) b!1327656))

(assert (= (and b!1327656 res!881050) b!1327657))

(assert (= (and b!1327657 res!881049) b!1327658))

(assert (= (and b!1327661 condMapEmpty!56281) mapIsEmpty!56281))

(assert (= (and b!1327661 (not condMapEmpty!56281)) mapNonEmpty!56281))

(get-info :version)

(assert (= (and mapNonEmpty!56281 ((_ is ValueCellFull!17304) mapValue!56281)) b!1327659))

(assert (= (and b!1327661 ((_ is ValueCellFull!17304) mapDefault!56281)) b!1327660))

(assert (= start!112136 b!1327661))

(declare-fun m!1216905 () Bool)

(assert (=> start!112136 m!1216905))

(declare-fun m!1216907 () Bool)

(assert (=> start!112136 m!1216907))

(declare-fun m!1216909 () Bool)

(assert (=> start!112136 m!1216909))

(declare-fun m!1216911 () Bool)

(assert (=> b!1327657 m!1216911))

(declare-fun m!1216913 () Bool)

(assert (=> b!1327658 m!1216913))

(declare-fun m!1216915 () Bool)

(assert (=> mapNonEmpty!56281 m!1216915))

(check-sat (not b!1327657) (not mapNonEmpty!56281) (not start!112136) tp_is_empty!36405 (not b!1327658))
(check-sat)
