; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112152 () Bool)

(assert start!112152)

(declare-fun b!1327800 () Bool)

(declare-fun e!757008 () Bool)

(declare-fun tp_is_empty!36421 () Bool)

(assert (=> b!1327800 (= e!757008 tp_is_empty!36421)))

(declare-fun b!1327801 () Bool)

(declare-fun e!757009 () Bool)

(assert (=> b!1327801 (= e!757009 false)))

(declare-fun lt!590705 () Bool)

(declare-datatypes ((array!89707 0))(
  ( (array!89708 (arr!43315 (Array (_ BitVec 32) (_ BitVec 64))) (size!43866 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89707)

(declare-datatypes ((List!30880 0))(
  ( (Nil!30877) (Cons!30876 (h!32085 (_ BitVec 64)) (t!44893 List!30880)) )
))
(declare-fun arrayNoDuplicates!0 (array!89707 (_ BitVec 32) List!30880) Bool)

(assert (=> b!1327801 (= lt!590705 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30877))))

(declare-fun b!1327802 () Bool)

(declare-fun e!757007 () Bool)

(assert (=> b!1327802 (= e!757007 tp_is_empty!36421)))

(declare-fun mapNonEmpty!56305 () Bool)

(declare-fun mapRes!56305 () Bool)

(declare-fun tp!107213 () Bool)

(assert (=> mapNonEmpty!56305 (= mapRes!56305 (and tp!107213 e!757008))))

(declare-datatypes ((V!53665 0))(
  ( (V!53666 (val!18285 Int)) )
))
(declare-datatypes ((ValueCell!17312 0))(
  ( (ValueCellFull!17312 (v!20920 V!53665)) (EmptyCell!17312) )
))
(declare-datatypes ((array!89709 0))(
  ( (array!89710 (arr!43316 (Array (_ BitVec 32) ValueCell!17312)) (size!43867 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89709)

(declare-fun mapValue!56305 () ValueCell!17312)

(declare-fun mapRest!56305 () (Array (_ BitVec 32) ValueCell!17312))

(declare-fun mapKey!56305 () (_ BitVec 32))

(assert (=> mapNonEmpty!56305 (= (arr!43316 _values!1320) (store mapRest!56305 mapKey!56305 mapValue!56305))))

(declare-fun b!1327803 () Bool)

(declare-fun e!757005 () Bool)

(assert (=> b!1327803 (= e!757005 (and e!757007 mapRes!56305))))

(declare-fun condMapEmpty!56305 () Bool)

(declare-fun mapDefault!56305 () ValueCell!17312)

