; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4246 () Bool)

(assert start!4246)

(declare-fun b_free!1133 () Bool)

(declare-fun b_next!1133 () Bool)

(assert (=> start!4246 (= b_free!1133 (not b_next!1133))))

(declare-fun tp!4821 () Bool)

(declare-fun b_and!1947 () Bool)

(assert (=> start!4246 (= tp!4821 b_and!1947)))

(declare-fun b!32525 () Bool)

(declare-fun res!19749 () Bool)

(declare-fun e!20668 () Bool)

(assert (=> b!32525 (=> (not res!19749) (not e!20668))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1807 0))(
  ( (V!1808 (val!770 Int)) )
))
(declare-datatypes ((ValueCell!544 0))(
  ( (ValueCellFull!544 (v!1860 V!1807)) (EmptyCell!544) )
))
(declare-datatypes ((array!2181 0))(
  ( (array!2182 (arr!1043 (Array (_ BitVec 32) ValueCell!544)) (size!1144 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2181)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2183 0))(
  ( (array!2184 (arr!1044 (Array (_ BitVec 32) (_ BitVec 64))) (size!1145 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2183)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1807)

(declare-fun minValue!1443 () V!1807)

(declare-datatypes ((tuple2!1244 0))(
  ( (tuple2!1245 (_1!632 (_ BitVec 64)) (_2!632 V!1807)) )
))
(declare-datatypes ((List!847 0))(
  ( (Nil!844) (Cons!843 (h!1410 tuple2!1244) (t!3544 List!847)) )
))
(declare-datatypes ((ListLongMap!825 0))(
  ( (ListLongMap!826 (toList!428 List!847)) )
))
(declare-fun contains!366 (ListLongMap!825 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!253 (array!2183 array!2181 (_ BitVec 32) (_ BitVec 32) V!1807 V!1807 (_ BitVec 32) Int) ListLongMap!825)

(assert (=> b!32525 (= res!19749 (not (contains!366 (getCurrentListMap!253 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!32526 () Bool)

(declare-fun e!20669 () Bool)

(declare-fun e!20670 () Bool)

(declare-fun mapRes!1762 () Bool)

(assert (=> b!32526 (= e!20669 (and e!20670 mapRes!1762))))

(declare-fun condMapEmpty!1762 () Bool)

(declare-fun mapDefault!1762 () ValueCell!544)

