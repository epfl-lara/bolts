; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77590 () Bool)

(assert start!77590)

(declare-fun b_free!16147 () Bool)

(declare-fun b_next!16147 () Bool)

(assert (=> start!77590 (= b_free!16147 (not b_next!16147))))

(declare-fun tp!56704 () Bool)

(declare-fun b_and!26531 () Bool)

(assert (=> start!77590 (= tp!56704 b_and!26531)))

(declare-fun b!903537 () Bool)

(declare-fun res!609701 () Bool)

(declare-fun e!506306 () Bool)

(assert (=> b!903537 (=> (not res!609701) (not e!506306))))

(declare-datatypes ((array!53166 0))(
  ( (array!53167 (arr!25538 (Array (_ BitVec 32) (_ BitVec 64))) (size!25998 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53166)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53166 (_ BitVec 32)) Bool)

(assert (=> b!903537 (= res!609701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903538 () Bool)

(declare-fun e!506309 () Bool)

(declare-fun e!506305 () Bool)

(declare-fun mapRes!29560 () Bool)

(assert (=> b!903538 (= e!506309 (and e!506305 mapRes!29560))))

(declare-fun condMapEmpty!29560 () Bool)

(declare-datatypes ((V!29719 0))(
  ( (V!29720 (val!9333 Int)) )
))
(declare-datatypes ((ValueCell!8801 0))(
  ( (ValueCellFull!8801 (v!11838 V!29719)) (EmptyCell!8801) )
))
(declare-datatypes ((array!53168 0))(
  ( (array!53169 (arr!25539 (Array (_ BitVec 32) ValueCell!8801)) (size!25999 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53168)

(declare-fun mapDefault!29560 () ValueCell!8801)

