; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112162 () Bool)

(assert start!112162)

(declare-fun b!1327890 () Bool)

(declare-fun res!881168 () Bool)

(declare-fun e!757084 () Bool)

(assert (=> b!1327890 (=> (not res!881168) (not e!757084))))

(declare-datatypes ((array!89727 0))(
  ( (array!89728 (arr!43325 (Array (_ BitVec 32) (_ BitVec 64))) (size!43876 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89727)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89727 (_ BitVec 32)) Bool)

(assert (=> b!1327890 (= res!881168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327891 () Bool)

(declare-fun e!757082 () Bool)

(declare-fun tp_is_empty!36431 () Bool)

(assert (=> b!1327891 (= e!757082 tp_is_empty!36431)))

(declare-fun res!881166 () Bool)

(assert (=> start!112162 (=> (not res!881166) (not e!757084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112162 (= res!881166 (validMask!0 mask!1998))))

(assert (=> start!112162 e!757084))

(assert (=> start!112162 true))

(declare-datatypes ((V!53677 0))(
  ( (V!53678 (val!18290 Int)) )
))
(declare-datatypes ((ValueCell!17317 0))(
  ( (ValueCellFull!17317 (v!20925 V!53677)) (EmptyCell!17317) )
))
(declare-datatypes ((array!89729 0))(
  ( (array!89730 (arr!43326 (Array (_ BitVec 32) ValueCell!17317)) (size!43877 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89729)

(declare-fun e!757080 () Bool)

(declare-fun array_inv!32643 (array!89729) Bool)

(assert (=> start!112162 (and (array_inv!32643 _values!1320) e!757080)))

(declare-fun array_inv!32644 (array!89727) Bool)

(assert (=> start!112162 (array_inv!32644 _keys!1590)))

(declare-fun b!1327892 () Bool)

(declare-fun mapRes!56320 () Bool)

(assert (=> b!1327892 (= e!757080 (and e!757082 mapRes!56320))))

(declare-fun condMapEmpty!56320 () Bool)

(declare-fun mapDefault!56320 () ValueCell!17317)

