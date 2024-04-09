; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83862 () Bool)

(assert start!83862)

(declare-fun b_free!19643 () Bool)

(declare-fun b_next!19643 () Bool)

(assert (=> start!83862 (= b_free!19643 (not b_next!19643))))

(declare-fun tp!68371 () Bool)

(declare-fun b_and!31393 () Bool)

(assert (=> start!83862 (= tp!68371 b_and!31393)))

(declare-fun b!979147 () Bool)

(declare-fun res!655384 () Bool)

(declare-fun e!551988 () Bool)

(assert (=> b!979147 (=> (not res!655384) (not e!551988))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35165 0))(
  ( (V!35166 (val!11369 Int)) )
))
(declare-datatypes ((ValueCell!10837 0))(
  ( (ValueCellFull!10837 (v!13931 V!35165)) (EmptyCell!10837) )
))
(declare-datatypes ((array!61287 0))(
  ( (array!61288 (arr!29497 (Array (_ BitVec 32) ValueCell!10837)) (size!29977 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61287)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61289 0))(
  ( (array!61290 (arr!29498 (Array (_ BitVec 32) (_ BitVec 64))) (size!29978 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61289)

(assert (=> b!979147 (= res!655384 (and (= (size!29977 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29978 _keys!1544) (size!29977 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979148 () Bool)

(declare-fun e!551990 () Bool)

(declare-fun e!551985 () Bool)

(declare-fun mapRes!35984 () Bool)

(assert (=> b!979148 (= e!551990 (and e!551985 mapRes!35984))))

(declare-fun condMapEmpty!35984 () Bool)

(declare-fun mapDefault!35984 () ValueCell!10837)

