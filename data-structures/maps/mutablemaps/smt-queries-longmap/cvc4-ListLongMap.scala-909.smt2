; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20566 () Bool)

(assert start!20566)

(declare-fun b_free!5213 () Bool)

(declare-fun b_next!5213 () Bool)

(assert (=> start!20566 (= b_free!5213 (not b_next!5213))))

(declare-fun tp!18670 () Bool)

(declare-fun b_and!11977 () Bool)

(assert (=> start!20566 (= tp!18670 b_and!11977)))

(declare-fun mapNonEmpty!8672 () Bool)

(declare-fun mapRes!8672 () Bool)

(declare-fun tp!18671 () Bool)

(declare-fun e!133765 () Bool)

(assert (=> mapNonEmpty!8672 (= mapRes!8672 (and tp!18671 e!133765))))

(declare-datatypes ((V!6405 0))(
  ( (V!6406 (val!2579 Int)) )
))
(declare-datatypes ((ValueCell!2191 0))(
  ( (ValueCellFull!2191 (v!4545 V!6405)) (EmptyCell!2191) )
))
(declare-fun mapValue!8672 () ValueCell!2191)

(declare-fun mapKey!8672 () (_ BitVec 32))

(declare-datatypes ((array!9354 0))(
  ( (array!9355 (arr!4427 (Array (_ BitVec 32) ValueCell!2191)) (size!4752 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9354)

(declare-fun mapRest!8672 () (Array (_ BitVec 32) ValueCell!2191))

(assert (=> mapNonEmpty!8672 (= (arr!4427 _values!649) (store mapRest!8672 mapKey!8672 mapValue!8672))))

(declare-fun b!204435 () Bool)

(declare-fun res!98534 () Bool)

(declare-fun e!133769 () Bool)

(assert (=> b!204435 (=> (not res!98534) (not e!133769))))

(declare-datatypes ((array!9356 0))(
  ( (array!9357 (arr!4428 (Array (_ BitVec 32) (_ BitVec 64))) (size!4753 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9356)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!204435 (= res!98534 (and (= (size!4752 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4753 _keys!825) (size!4752 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204436 () Bool)

(declare-fun e!133768 () Bool)

(declare-fun e!133770 () Bool)

(assert (=> b!204436 (= e!133768 (and e!133770 mapRes!8672))))

(declare-fun condMapEmpty!8672 () Bool)

(declare-fun mapDefault!8672 () ValueCell!2191)

