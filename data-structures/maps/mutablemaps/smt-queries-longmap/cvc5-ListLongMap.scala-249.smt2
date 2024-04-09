; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4174 () Bool)

(assert start!4174)

(declare-fun b_free!1081 () Bool)

(declare-fun b_next!1081 () Bool)

(assert (=> start!4174 (= b_free!1081 (not b_next!1081))))

(declare-fun tp!4663 () Bool)

(declare-fun b_and!1893 () Bool)

(assert (=> start!4174 (= tp!4663 b_and!1893)))

(declare-fun b!31616 () Bool)

(declare-fun res!19143 () Bool)

(declare-fun e!20187 () Bool)

(assert (=> b!31616 (=> (not res!19143) (not e!20187))))

(declare-datatypes ((V!1739 0))(
  ( (V!1740 (val!744 Int)) )
))
(declare-datatypes ((ValueCell!518 0))(
  ( (ValueCellFull!518 (v!1833 V!1739)) (EmptyCell!518) )
))
(declare-datatypes ((array!2077 0))(
  ( (array!2078 (arr!992 (Array (_ BitVec 32) ValueCell!518)) (size!1093 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2077)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2079 0))(
  ( (array!2080 (arr!993 (Array (_ BitVec 32) (_ BitVec 64))) (size!1094 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2079)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!31616 (= res!19143 (and (= (size!1093 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1094 _keys!1833) (size!1093 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31617 () Bool)

(declare-fun e!20188 () Bool)

(declare-fun e!20189 () Bool)

(declare-fun mapRes!1681 () Bool)

(assert (=> b!31617 (= e!20188 (and e!20189 mapRes!1681))))

(declare-fun condMapEmpty!1681 () Bool)

(declare-fun mapDefault!1681 () ValueCell!518)

