; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112180 () Bool)

(assert start!112180)

(declare-fun b!1328061 () Bool)

(declare-fun res!881257 () Bool)

(declare-fun e!757215 () Bool)

(assert (=> b!1328061 (=> (not res!881257) (not e!757215))))

(declare-datatypes ((array!89761 0))(
  ( (array!89762 (arr!43342 (Array (_ BitVec 32) (_ BitVec 64))) (size!43893 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89761)

(declare-datatypes ((List!30890 0))(
  ( (Nil!30887) (Cons!30886 (h!32095 (_ BitVec 64)) (t!44903 List!30890)) )
))
(declare-fun arrayNoDuplicates!0 (array!89761 (_ BitVec 32) List!30890) Bool)

(assert (=> b!1328061 (= res!881257 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30887))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun b!1328062 () Bool)

(assert (=> b!1328062 (= e!757215 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43893 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!1980 (size!43893 _keys!1590))))))

(declare-fun b!1328063 () Bool)

(declare-fun e!757219 () Bool)

(declare-fun tp_is_empty!36449 () Bool)

(assert (=> b!1328063 (= e!757219 tp_is_empty!36449)))

(declare-fun b!1328064 () Bool)

(declare-fun res!881255 () Bool)

(assert (=> b!1328064 (=> (not res!881255) (not e!757215))))

(declare-datatypes ((V!53701 0))(
  ( (V!53702 (val!18299 Int)) )
))
(declare-datatypes ((ValueCell!17326 0))(
  ( (ValueCellFull!17326 (v!20934 V!53701)) (EmptyCell!17326) )
))
(declare-datatypes ((array!89763 0))(
  ( (array!89764 (arr!43343 (Array (_ BitVec 32) ValueCell!17326)) (size!43894 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89763)

(declare-fun mask!1998 () (_ BitVec 32))

(assert (=> b!1328064 (= res!881255 (and (= (size!43894 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43893 _keys!1590) (size!43894 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328060 () Bool)

(declare-fun res!881256 () Bool)

(assert (=> b!1328060 (=> (not res!881256) (not e!757215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89761 (_ BitVec 32)) Bool)

(assert (=> b!1328060 (= res!881256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!881258 () Bool)

(assert (=> start!112180 (=> (not res!881258) (not e!757215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112180 (= res!881258 (validMask!0 mask!1998))))

(assert (=> start!112180 e!757215))

(assert (=> start!112180 true))

(declare-fun e!757217 () Bool)

(declare-fun array_inv!32653 (array!89763) Bool)

(assert (=> start!112180 (and (array_inv!32653 _values!1320) e!757217)))

(declare-fun array_inv!32654 (array!89761) Bool)

(assert (=> start!112180 (array_inv!32654 _keys!1590)))

(declare-fun mapIsEmpty!56347 () Bool)

(declare-fun mapRes!56347 () Bool)

(assert (=> mapIsEmpty!56347 mapRes!56347))

(declare-fun b!1328065 () Bool)

(declare-fun e!757216 () Bool)

(assert (=> b!1328065 (= e!757216 tp_is_empty!36449)))

(declare-fun b!1328066 () Bool)

(assert (=> b!1328066 (= e!757217 (and e!757216 mapRes!56347))))

(declare-fun condMapEmpty!56347 () Bool)

(declare-fun mapDefault!56347 () ValueCell!17326)

