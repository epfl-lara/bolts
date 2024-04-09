; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112476 () Bool)

(assert start!112476)

(declare-fun b_free!30835 () Bool)

(declare-fun b_next!30835 () Bool)

(assert (=> start!112476 (= b_free!30835 (not b_next!30835))))

(declare-fun tp!108142 () Bool)

(declare-fun b_and!49687 () Bool)

(assert (=> start!112476 (= tp!108142 b_and!49687)))

(declare-fun b!1332988 () Bool)

(declare-fun res!884666 () Bool)

(declare-fun e!759437 () Bool)

(assert (=> b!1332988 (=> (not res!884666) (not e!759437))))

(declare-datatypes ((array!90337 0))(
  ( (array!90338 (arr!43630 (Array (_ BitVec 32) (_ BitVec 64))) (size!44181 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90337)

(declare-datatypes ((List!31106 0))(
  ( (Nil!31103) (Cons!31102 (h!32311 (_ BitVec 64)) (t!45311 List!31106)) )
))
(declare-fun arrayNoDuplicates!0 (array!90337 (_ BitVec 32) List!31106) Bool)

(assert (=> b!1332988 (= res!884666 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31103))))

(declare-fun b!1332989 () Bool)

(declare-fun e!759436 () Bool)

(declare-fun tp_is_empty!36745 () Bool)

(assert (=> b!1332989 (= e!759436 tp_is_empty!36745)))

(declare-fun b!1332990 () Bool)

(declare-fun res!884662 () Bool)

(assert (=> b!1332990 (=> (not res!884662) (not e!759437))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1332990 (= res!884662 (not (= (select (arr!43630 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1332991 () Bool)

(declare-fun res!884659 () Bool)

(assert (=> b!1332991 (=> (not res!884659) (not e!759437))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1332991 (= res!884659 (validKeyInArray!0 (select (arr!43630 _keys!1590) from!1980)))))

(declare-fun mapIsEmpty!56791 () Bool)

(declare-fun mapRes!56791 () Bool)

(assert (=> mapIsEmpty!56791 mapRes!56791))

(declare-fun b!1332992 () Bool)

(declare-fun e!759439 () Bool)

(assert (=> b!1332992 (= e!759439 (and e!759436 mapRes!56791))))

(declare-fun condMapEmpty!56791 () Bool)

(declare-datatypes ((V!54097 0))(
  ( (V!54098 (val!18447 Int)) )
))
(declare-datatypes ((ValueCell!17474 0))(
  ( (ValueCellFull!17474 (v!21082 V!54097)) (EmptyCell!17474) )
))
(declare-datatypes ((array!90339 0))(
  ( (array!90340 (arr!43631 (Array (_ BitVec 32) ValueCell!17474)) (size!44182 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90339)

(declare-fun mapDefault!56791 () ValueCell!17474)

