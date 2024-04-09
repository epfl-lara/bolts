; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83090 () Bool)

(assert start!83090)

(declare-fun b!968852 () Bool)

(declare-fun e!546162 () Bool)

(assert (=> b!968852 (= e!546162 false)))

(declare-fun lt!431524 () Bool)

(declare-datatypes ((array!59957 0))(
  ( (array!59958 (arr!28838 (Array (_ BitVec 32) (_ BitVec 64))) (size!29318 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59957)

(declare-datatypes ((List!20130 0))(
  ( (Nil!20127) (Cons!20126 (h!21288 (_ BitVec 64)) (t!28501 List!20130)) )
))
(declare-fun arrayNoDuplicates!0 (array!59957 (_ BitVec 32) List!20130) Bool)

(assert (=> b!968852 (= lt!431524 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20127))))

(declare-fun res!648635 () Bool)

(assert (=> start!83090 (=> (not res!648635) (not e!546162))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83090 (= res!648635 (validMask!0 mask!2147))))

(assert (=> start!83090 e!546162))

(assert (=> start!83090 true))

(declare-datatypes ((V!34253 0))(
  ( (V!34254 (val!11027 Int)) )
))
(declare-datatypes ((ValueCell!10495 0))(
  ( (ValueCellFull!10495 (v!13586 V!34253)) (EmptyCell!10495) )
))
(declare-datatypes ((array!59959 0))(
  ( (array!59960 (arr!28839 (Array (_ BitVec 32) ValueCell!10495)) (size!29319 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59959)

(declare-fun e!546159 () Bool)

(declare-fun array_inv!22219 (array!59959) Bool)

(assert (=> start!83090 (and (array_inv!22219 _values!1425) e!546159)))

(declare-fun array_inv!22220 (array!59957) Bool)

(assert (=> start!83090 (array_inv!22220 _keys!1717)))

(declare-fun mapIsEmpty!34939 () Bool)

(declare-fun mapRes!34939 () Bool)

(assert (=> mapIsEmpty!34939 mapRes!34939))

(declare-fun mapNonEmpty!34939 () Bool)

(declare-fun tp!66508 () Bool)

(declare-fun e!546161 () Bool)

(assert (=> mapNonEmpty!34939 (= mapRes!34939 (and tp!66508 e!546161))))

(declare-fun mapRest!34939 () (Array (_ BitVec 32) ValueCell!10495))

(declare-fun mapKey!34939 () (_ BitVec 32))

(declare-fun mapValue!34939 () ValueCell!10495)

(assert (=> mapNonEmpty!34939 (= (arr!28839 _values!1425) (store mapRest!34939 mapKey!34939 mapValue!34939))))

(declare-fun b!968853 () Bool)

(declare-fun res!648637 () Bool)

(assert (=> b!968853 (=> (not res!648637) (not e!546162))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968853 (= res!648637 (and (= (size!29319 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29318 _keys!1717) (size!29319 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968854 () Bool)

(declare-fun e!546158 () Bool)

(assert (=> b!968854 (= e!546159 (and e!546158 mapRes!34939))))

(declare-fun condMapEmpty!34939 () Bool)

(declare-fun mapDefault!34939 () ValueCell!10495)

