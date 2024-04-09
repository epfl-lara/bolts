; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83168 () Bool)

(assert start!83168)

(declare-fun b_free!19133 () Bool)

(declare-fun b_next!19133 () Bool)

(assert (=> start!83168 (= b_free!19133 (not b_next!19133))))

(declare-fun tp!66679 () Bool)

(declare-fun b_and!30639 () Bool)

(assert (=> start!83168 (= tp!66679 b_and!30639)))

(declare-fun b!969740 () Bool)

(declare-fun res!649176 () Bool)

(declare-fun e!546744 () Bool)

(assert (=> b!969740 (=> (not res!649176) (not e!546744))))

(declare-datatypes ((array!60107 0))(
  ( (array!60108 (arr!28913 (Array (_ BitVec 32) (_ BitVec 64))) (size!29393 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60107)

(declare-datatypes ((List!20167 0))(
  ( (Nil!20164) (Cons!20163 (h!21325 (_ BitVec 64)) (t!28538 List!20167)) )
))
(declare-fun arrayNoDuplicates!0 (array!60107 (_ BitVec 32) List!20167) Bool)

(assert (=> b!969740 (= res!649176 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20164))))

(declare-fun b!969741 () Bool)

(declare-fun e!546745 () Bool)

(declare-fun e!546746 () Bool)

(declare-fun mapRes!35056 () Bool)

(assert (=> b!969741 (= e!546745 (and e!546746 mapRes!35056))))

(declare-fun condMapEmpty!35056 () Bool)

(declare-datatypes ((V!34357 0))(
  ( (V!34358 (val!11066 Int)) )
))
(declare-datatypes ((ValueCell!10534 0))(
  ( (ValueCellFull!10534 (v!13625 V!34357)) (EmptyCell!10534) )
))
(declare-datatypes ((array!60109 0))(
  ( (array!60110 (arr!28914 (Array (_ BitVec 32) ValueCell!10534)) (size!29394 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60109)

(declare-fun mapDefault!35056 () ValueCell!10534)

