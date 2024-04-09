; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112114 () Bool)

(assert start!112114)

(declare-fun b!1327529 () Bool)

(declare-fun res!880985 () Bool)

(declare-fun e!756783 () Bool)

(assert (=> b!1327529 (=> (not res!880985) (not e!756783))))

(declare-datatypes ((V!53629 0))(
  ( (V!53630 (val!18272 Int)) )
))
(declare-datatypes ((ValueCell!17299 0))(
  ( (ValueCellFull!17299 (v!20906 V!53629)) (EmptyCell!17299) )
))
(declare-datatypes ((array!89657 0))(
  ( (array!89658 (arr!43291 (Array (_ BitVec 32) ValueCell!17299)) (size!43842 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89657)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89659 0))(
  ( (array!89660 (arr!43292 (Array (_ BitVec 32) (_ BitVec 64))) (size!43843 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89659)

(assert (=> b!1327529 (= res!880985 (and (= (size!43842 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43843 _keys!1590) (size!43842 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56263 () Bool)

(declare-fun mapRes!56263 () Bool)

(declare-fun tp!107171 () Bool)

(declare-fun e!756780 () Bool)

(assert (=> mapNonEmpty!56263 (= mapRes!56263 (and tp!107171 e!756780))))

(declare-fun mapRest!56263 () (Array (_ BitVec 32) ValueCell!17299))

(declare-fun mapKey!56263 () (_ BitVec 32))

(declare-fun mapValue!56263 () ValueCell!17299)

(assert (=> mapNonEmpty!56263 (= (arr!43291 _values!1320) (store mapRest!56263 mapKey!56263 mapValue!56263))))

(declare-fun b!1327530 () Bool)

(declare-fun res!880982 () Bool)

(assert (=> b!1327530 (=> (not res!880982) (not e!756783))))

(assert (=> b!1327530 (= res!880982 (and (bvsle #b00000000000000000000000000000000 (size!43843 _keys!1590)) (bvslt (size!43843 _keys!1590) #b01111111111111111111111111111111)))))

(declare-fun b!1327531 () Bool)

(declare-fun e!756781 () Bool)

(assert (=> b!1327531 (= e!756783 e!756781)))

(declare-fun res!880986 () Bool)

(assert (=> b!1327531 (=> res!880986 e!756781)))

(declare-datatypes ((List!30872 0))(
  ( (Nil!30869) (Cons!30868 (h!32077 (_ BitVec 64)) (t!44885 List!30872)) )
))
(declare-fun contains!8802 (List!30872 (_ BitVec 64)) Bool)

(assert (=> b!1327531 (= res!880986 (contains!8802 Nil!30869 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1327532 () Bool)

(declare-fun res!880981 () Bool)

(assert (=> b!1327532 (=> (not res!880981) (not e!756783))))

(declare-fun noDuplicate!2101 (List!30872) Bool)

(assert (=> b!1327532 (= res!880981 (noDuplicate!2101 Nil!30869))))

(declare-fun mapIsEmpty!56263 () Bool)

(assert (=> mapIsEmpty!56263 mapRes!56263))

(declare-fun b!1327533 () Bool)

(assert (=> b!1327533 (= e!756781 (contains!8802 Nil!30869 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!880984 () Bool)

(assert (=> start!112114 (=> (not res!880984) (not e!756783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112114 (= res!880984 (validMask!0 mask!1998))))

(assert (=> start!112114 e!756783))

(assert (=> start!112114 true))

(declare-fun e!756782 () Bool)

(declare-fun array_inv!32619 (array!89657) Bool)

(assert (=> start!112114 (and (array_inv!32619 _values!1320) e!756782)))

(declare-fun array_inv!32620 (array!89659) Bool)

(assert (=> start!112114 (array_inv!32620 _keys!1590)))

(declare-fun b!1327534 () Bool)

(declare-fun tp_is_empty!36395 () Bool)

(assert (=> b!1327534 (= e!756780 tp_is_empty!36395)))

(declare-fun b!1327535 () Bool)

(declare-fun e!756785 () Bool)

(assert (=> b!1327535 (= e!756785 tp_is_empty!36395)))

(declare-fun b!1327536 () Bool)

(assert (=> b!1327536 (= e!756782 (and e!756785 mapRes!56263))))

(declare-fun condMapEmpty!56263 () Bool)

(declare-fun mapDefault!56263 () ValueCell!17299)

