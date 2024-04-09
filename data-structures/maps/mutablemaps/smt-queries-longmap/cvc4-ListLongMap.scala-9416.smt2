; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112144 () Bool)

(assert start!112144)

(declare-fun b!1327728 () Bool)

(declare-fun res!881087 () Bool)

(declare-fun e!756947 () Bool)

(assert (=> b!1327728 (=> (not res!881087) (not e!756947))))

(declare-datatypes ((V!53653 0))(
  ( (V!53654 (val!18281 Int)) )
))
(declare-datatypes ((ValueCell!17308 0))(
  ( (ValueCellFull!17308 (v!20916 V!53653)) (EmptyCell!17308) )
))
(declare-datatypes ((array!89691 0))(
  ( (array!89692 (arr!43307 (Array (_ BitVec 32) ValueCell!17308)) (size!43858 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89691)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89693 0))(
  ( (array!89694 (arr!43308 (Array (_ BitVec 32) (_ BitVec 64))) (size!43859 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89693)

(assert (=> b!1327728 (= res!881087 (and (= (size!43858 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43859 _keys!1590) (size!43858 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327729 () Bool)

(declare-fun e!756946 () Bool)

(declare-fun tp_is_empty!36413 () Bool)

(assert (=> b!1327729 (= e!756946 tp_is_empty!36413)))

(declare-fun b!1327730 () Bool)

(declare-fun res!881086 () Bool)

(assert (=> b!1327730 (=> (not res!881086) (not e!756947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89693 (_ BitVec 32)) Bool)

(assert (=> b!1327730 (= res!881086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327731 () Bool)

(declare-fun e!756945 () Bool)

(assert (=> b!1327731 (= e!756945 tp_is_empty!36413)))

(declare-fun b!1327732 () Bool)

(declare-fun e!756948 () Bool)

(declare-fun mapRes!56293 () Bool)

(assert (=> b!1327732 (= e!756948 (and e!756946 mapRes!56293))))

(declare-fun condMapEmpty!56293 () Bool)

(declare-fun mapDefault!56293 () ValueCell!17308)

