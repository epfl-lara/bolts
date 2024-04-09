; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4460 () Bool)

(assert start!4460)

(declare-fun b_free!1223 () Bool)

(declare-fun b_next!1223 () Bool)

(assert (=> start!4460 (= b_free!1223 (not b_next!1223))))

(declare-fun tp!5106 () Bool)

(declare-fun b_and!2047 () Bool)

(assert (=> start!4460 (= tp!5106 b_and!2047)))

(declare-fun b!34590 () Bool)

(declare-fun res!20974 () Bool)

(declare-fun e!21924 () Bool)

(assert (=> b!34590 (=> (not res!20974) (not e!21924))))

(declare-datatypes ((array!2359 0))(
  ( (array!2360 (arr!1127 (Array (_ BitVec 32) (_ BitVec 64))) (size!1228 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2359)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2359 (_ BitVec 32)) Bool)

(assert (=> b!34590 (= res!20974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1912 () Bool)

(declare-fun mapRes!1912 () Bool)

(assert (=> mapIsEmpty!1912 mapRes!1912))

(declare-fun b!34591 () Bool)

(declare-fun e!21926 () Bool)

(declare-fun e!21927 () Bool)

(assert (=> b!34591 (= e!21926 (and e!21927 mapRes!1912))))

(declare-fun condMapEmpty!1912 () Bool)

(declare-datatypes ((V!1927 0))(
  ( (V!1928 (val!815 Int)) )
))
(declare-datatypes ((ValueCell!589 0))(
  ( (ValueCellFull!589 (v!1910 V!1927)) (EmptyCell!589) )
))
(declare-datatypes ((array!2361 0))(
  ( (array!2362 (arr!1128 (Array (_ BitVec 32) ValueCell!589)) (size!1229 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2361)

(declare-fun mapDefault!1912 () ValueCell!589)

