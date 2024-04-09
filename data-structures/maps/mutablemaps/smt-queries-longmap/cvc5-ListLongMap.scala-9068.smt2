; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109228 () Bool)

(assert start!109228)

(declare-fun b_free!28681 () Bool)

(declare-fun b_next!28681 () Bool)

(assert (=> start!109228 (= b_free!28681 (not b_next!28681))))

(declare-fun tp!101163 () Bool)

(declare-fun b_and!46781 () Bool)

(assert (=> start!109228 (= tp!101163 b_and!46781)))

(declare-fun b!1291443 () Bool)

(declare-fun res!858116 () Bool)

(declare-fun e!737243 () Bool)

(assert (=> b!1291443 (=> (not res!858116) (not e!737243))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85637 0))(
  ( (array!85638 (arr!41315 (Array (_ BitVec 32) (_ BitVec 64))) (size!41866 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85637)

(assert (=> b!1291443 (= res!858116 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41866 _keys!1741))))))

(declare-fun b!1291444 () Bool)

(declare-fun res!858117 () Bool)

(assert (=> b!1291444 (=> (not res!858117) (not e!737243))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1291444 (= res!858117 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41866 _keys!1741))))))

(declare-fun b!1291445 () Bool)

(declare-fun e!737245 () Bool)

(declare-fun e!737242 () Bool)

(declare-fun mapRes!53042 () Bool)

(assert (=> b!1291445 (= e!737245 (and e!737242 mapRes!53042))))

(declare-fun condMapEmpty!53042 () Bool)

(declare-datatypes ((V!50865 0))(
  ( (V!50866 (val!17235 Int)) )
))
(declare-datatypes ((ValueCell!16262 0))(
  ( (ValueCellFull!16262 (v!19836 V!50865)) (EmptyCell!16262) )
))
(declare-datatypes ((array!85639 0))(
  ( (array!85640 (arr!41316 (Array (_ BitVec 32) ValueCell!16262)) (size!41867 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85639)

(declare-fun mapDefault!53042 () ValueCell!16262)

