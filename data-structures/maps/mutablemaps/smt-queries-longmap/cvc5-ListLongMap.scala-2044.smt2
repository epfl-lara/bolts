; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35440 () Bool)

(assert start!35440)

(declare-fun b_free!7819 () Bool)

(declare-fun b_next!7819 () Bool)

(assert (=> start!35440 (= b_free!7819 (not b_next!7819))))

(declare-fun tp!27243 () Bool)

(declare-fun b_and!15079 () Bool)

(assert (=> start!35440 (= tp!27243 b_and!15079)))

(declare-fun b!354537 () Bool)

(declare-fun res!196617 () Bool)

(declare-fun e!217323 () Bool)

(assert (=> b!354537 (=> (not res!196617) (not e!217323))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354537 (= res!196617 (validKeyInArray!0 k!1077))))

(declare-fun b!354538 () Bool)

(declare-fun res!196620 () Bool)

(assert (=> b!354538 (=> (not res!196620) (not e!217323))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19317 0))(
  ( (array!19318 (arr!9149 (Array (_ BitVec 32) (_ BitVec 64))) (size!9501 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19317)

(assert (=> b!354538 (= res!196620 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9501 _keys!1456))))))

(declare-fun mapIsEmpty!13335 () Bool)

(declare-fun mapRes!13335 () Bool)

(assert (=> mapIsEmpty!13335 mapRes!13335))

(declare-fun b!354539 () Bool)

(declare-fun e!217321 () Bool)

(declare-fun e!217324 () Bool)

(assert (=> b!354539 (= e!217321 (and e!217324 mapRes!13335))))

(declare-fun condMapEmpty!13335 () Bool)

(declare-datatypes ((V!11491 0))(
  ( (V!11492 (val!3987 Int)) )
))
(declare-datatypes ((ValueCell!3599 0))(
  ( (ValueCellFull!3599 (v!6177 V!11491)) (EmptyCell!3599) )
))
(declare-datatypes ((array!19319 0))(
  ( (array!19320 (arr!9150 (Array (_ BitVec 32) ValueCell!3599)) (size!9502 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19319)

(declare-fun mapDefault!13335 () ValueCell!3599)

