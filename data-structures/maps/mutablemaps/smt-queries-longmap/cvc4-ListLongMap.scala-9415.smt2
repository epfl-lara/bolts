; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112138 () Bool)

(assert start!112138)

(declare-fun res!881059 () Bool)

(declare-fun e!756904 () Bool)

(assert (=> start!112138 (=> (not res!881059) (not e!756904))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112138 (= res!881059 (validMask!0 mask!1998))))

(assert (=> start!112138 e!756904))

(assert (=> start!112138 true))

(declare-datatypes ((V!53645 0))(
  ( (V!53646 (val!18278 Int)) )
))
(declare-datatypes ((ValueCell!17305 0))(
  ( (ValueCellFull!17305 (v!20913 V!53645)) (EmptyCell!17305) )
))
(declare-datatypes ((array!89679 0))(
  ( (array!89680 (arr!43301 (Array (_ BitVec 32) ValueCell!17305)) (size!43852 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89679)

(declare-fun e!756903 () Bool)

(declare-fun array_inv!32625 (array!89679) Bool)

(assert (=> start!112138 (and (array_inv!32625 _values!1320) e!756903)))

(declare-datatypes ((array!89681 0))(
  ( (array!89682 (arr!43302 (Array (_ BitVec 32) (_ BitVec 64))) (size!43853 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89681)

(declare-fun array_inv!32626 (array!89681) Bool)

(assert (=> start!112138 (array_inv!32626 _keys!1590)))

(declare-fun b!1327674 () Bool)

(assert (=> b!1327674 (= e!756904 false)))

(declare-fun lt!590684 () Bool)

(declare-datatypes ((List!30875 0))(
  ( (Nil!30872) (Cons!30871 (h!32080 (_ BitVec 64)) (t!44888 List!30875)) )
))
(declare-fun arrayNoDuplicates!0 (array!89681 (_ BitVec 32) List!30875) Bool)

(assert (=> b!1327674 (= lt!590684 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30872))))

(declare-fun b!1327675 () Bool)

(declare-fun e!756902 () Bool)

(declare-fun tp_is_empty!36407 () Bool)

(assert (=> b!1327675 (= e!756902 tp_is_empty!36407)))

(declare-fun b!1327676 () Bool)

(declare-fun e!756900 () Bool)

(assert (=> b!1327676 (= e!756900 tp_is_empty!36407)))

(declare-fun b!1327677 () Bool)

(declare-fun mapRes!56284 () Bool)

(assert (=> b!1327677 (= e!756903 (and e!756900 mapRes!56284))))

(declare-fun condMapEmpty!56284 () Bool)

(declare-fun mapDefault!56284 () ValueCell!17305)

