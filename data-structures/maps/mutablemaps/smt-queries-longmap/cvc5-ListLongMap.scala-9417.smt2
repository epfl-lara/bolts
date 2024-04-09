; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112146 () Bool)

(assert start!112146)

(declare-fun b!1327746 () Bool)

(declare-fun res!881096 () Bool)

(declare-fun e!756962 () Bool)

(assert (=> b!1327746 (=> (not res!881096) (not e!756962))))

(declare-datatypes ((V!53657 0))(
  ( (V!53658 (val!18282 Int)) )
))
(declare-datatypes ((ValueCell!17309 0))(
  ( (ValueCellFull!17309 (v!20917 V!53657)) (EmptyCell!17309) )
))
(declare-datatypes ((array!89695 0))(
  ( (array!89696 (arr!43309 (Array (_ BitVec 32) ValueCell!17309)) (size!43860 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89695)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89697 0))(
  ( (array!89698 (arr!43310 (Array (_ BitVec 32) (_ BitVec 64))) (size!43861 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89697)

(assert (=> b!1327746 (= res!881096 (and (= (size!43860 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43861 _keys!1590) (size!43860 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327747 () Bool)

(declare-fun res!881095 () Bool)

(assert (=> b!1327747 (=> (not res!881095) (not e!756962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89697 (_ BitVec 32)) Bool)

(assert (=> b!1327747 (= res!881095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327748 () Bool)

(assert (=> b!1327748 (= e!756962 false)))

(declare-fun lt!590696 () Bool)

(declare-datatypes ((List!30877 0))(
  ( (Nil!30874) (Cons!30873 (h!32082 (_ BitVec 64)) (t!44890 List!30877)) )
))
(declare-fun arrayNoDuplicates!0 (array!89697 (_ BitVec 32) List!30877) Bool)

(assert (=> b!1327748 (= lt!590696 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30874))))

(declare-fun res!881094 () Bool)

(assert (=> start!112146 (=> (not res!881094) (not e!756962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112146 (= res!881094 (validMask!0 mask!1998))))

(assert (=> start!112146 e!756962))

(assert (=> start!112146 true))

(declare-fun e!756964 () Bool)

(declare-fun array_inv!32631 (array!89695) Bool)

(assert (=> start!112146 (and (array_inv!32631 _values!1320) e!756964)))

(declare-fun array_inv!32632 (array!89697) Bool)

(assert (=> start!112146 (array_inv!32632 _keys!1590)))

(declare-fun b!1327749 () Bool)

(declare-fun e!756963 () Bool)

(declare-fun mapRes!56296 () Bool)

(assert (=> b!1327749 (= e!756964 (and e!756963 mapRes!56296))))

(declare-fun condMapEmpty!56296 () Bool)

(declare-fun mapDefault!56296 () ValueCell!17309)

