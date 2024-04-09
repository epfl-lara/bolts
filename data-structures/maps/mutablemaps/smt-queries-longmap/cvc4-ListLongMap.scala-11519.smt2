; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134124 () Bool)

(assert start!134124)

(declare-fun b_free!32219 () Bool)

(declare-fun b_next!32219 () Bool)

(assert (=> start!134124 (= b_free!32219 (not b_next!32219))))

(declare-fun tp!113977 () Bool)

(declare-fun b_and!51873 () Bool)

(assert (=> start!134124 (= tp!113977 b_and!51873)))

(declare-fun b!1567124 () Bool)

(declare-fun e!873574 () Bool)

(declare-datatypes ((array!104659 0))(
  ( (array!104660 (arr!50510 (Array (_ BitVec 32) (_ BitVec 64))) (size!51061 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104659)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1567124 (= e!873574 (bvsge (bvsub (size!51061 _keys!637) from!782) (bvsub (bvadd #b00000000000000000000000000000001 (size!51061 _keys!637)) from!782)))))

(declare-fun b!1567125 () Bool)

(declare-fun res!1071168 () Bool)

(assert (=> b!1567125 (=> (not res!1071168) (not e!873574))))

(declare-datatypes ((V!60205 0))(
  ( (V!60206 (val!19583 Int)) )
))
(declare-datatypes ((tuple2!25436 0))(
  ( (tuple2!25437 (_1!12728 (_ BitVec 64)) (_2!12728 V!60205)) )
))
(declare-datatypes ((List!36820 0))(
  ( (Nil!36817) (Cons!36816 (h!38264 tuple2!25436) (t!51731 List!36820)) )
))
(declare-datatypes ((ListLongMap!22883 0))(
  ( (ListLongMap!22884 (toList!11457 List!36820)) )
))
(declare-fun lt!672806 () ListLongMap!22883)

(declare-fun contains!10381 (ListLongMap!22883 (_ BitVec 64)) Bool)

(assert (=> b!1567125 (= res!1071168 (not (contains!10381 lt!672806 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567126 () Bool)

(declare-fun e!873576 () Bool)

(declare-fun e!873578 () Bool)

(declare-fun mapRes!59898 () Bool)

(assert (=> b!1567126 (= e!873576 (and e!873578 mapRes!59898))))

(declare-fun condMapEmpty!59898 () Bool)

(declare-datatypes ((ValueCell!18469 0))(
  ( (ValueCellFull!18469 (v!22339 V!60205)) (EmptyCell!18469) )
))
(declare-datatypes ((array!104661 0))(
  ( (array!104662 (arr!50511 (Array (_ BitVec 32) ValueCell!18469)) (size!51062 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104661)

(declare-fun mapDefault!59898 () ValueCell!18469)

