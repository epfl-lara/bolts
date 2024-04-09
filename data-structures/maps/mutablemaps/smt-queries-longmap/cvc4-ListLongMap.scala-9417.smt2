; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112150 () Bool)

(assert start!112150)

(declare-fun mapNonEmpty!56302 () Bool)

(declare-fun mapRes!56302 () Bool)

(declare-fun tp!107210 () Bool)

(declare-fun e!756992 () Bool)

(assert (=> mapNonEmpty!56302 (= mapRes!56302 (and tp!107210 e!756992))))

(declare-datatypes ((V!53661 0))(
  ( (V!53662 (val!18284 Int)) )
))
(declare-datatypes ((ValueCell!17311 0))(
  ( (ValueCellFull!17311 (v!20919 V!53661)) (EmptyCell!17311) )
))
(declare-datatypes ((array!89703 0))(
  ( (array!89704 (arr!43313 (Array (_ BitVec 32) ValueCell!17311)) (size!43864 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89703)

(declare-fun mapValue!56302 () ValueCell!17311)

(declare-fun mapRest!56302 () (Array (_ BitVec 32) ValueCell!17311))

(declare-fun mapKey!56302 () (_ BitVec 32))

(assert (=> mapNonEmpty!56302 (= (arr!43313 _values!1320) (store mapRest!56302 mapKey!56302 mapValue!56302))))

(declare-fun b!1327782 () Bool)

(declare-fun e!756991 () Bool)

(assert (=> b!1327782 (= e!756991 false)))

(declare-fun lt!590702 () Bool)

(declare-datatypes ((array!89705 0))(
  ( (array!89706 (arr!43314 (Array (_ BitVec 32) (_ BitVec 64))) (size!43865 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89705)

(declare-datatypes ((List!30879 0))(
  ( (Nil!30876) (Cons!30875 (h!32084 (_ BitVec 64)) (t!44892 List!30879)) )
))
(declare-fun arrayNoDuplicates!0 (array!89705 (_ BitVec 32) List!30879) Bool)

(assert (=> b!1327782 (= lt!590702 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30876))))

(declare-fun res!881114 () Bool)

(assert (=> start!112150 (=> (not res!881114) (not e!756991))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112150 (= res!881114 (validMask!0 mask!1998))))

(assert (=> start!112150 e!756991))

(assert (=> start!112150 true))

(declare-fun e!756994 () Bool)

(declare-fun array_inv!32635 (array!89703) Bool)

(assert (=> start!112150 (and (array_inv!32635 _values!1320) e!756994)))

(declare-fun array_inv!32636 (array!89705) Bool)

(assert (=> start!112150 (array_inv!32636 _keys!1590)))

(declare-fun mapIsEmpty!56302 () Bool)

(assert (=> mapIsEmpty!56302 mapRes!56302))

(declare-fun b!1327783 () Bool)

(declare-fun res!881112 () Bool)

(assert (=> b!1327783 (=> (not res!881112) (not e!756991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89705 (_ BitVec 32)) Bool)

(assert (=> b!1327783 (= res!881112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327784 () Bool)

(declare-fun e!756993 () Bool)

(assert (=> b!1327784 (= e!756994 (and e!756993 mapRes!56302))))

(declare-fun condMapEmpty!56302 () Bool)

(declare-fun mapDefault!56302 () ValueCell!17311)

