; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35630 () Bool)

(assert start!35630)

(declare-fun b_free!7877 () Bool)

(declare-fun b_next!7877 () Bool)

(assert (=> start!35630 (= b_free!7877 (not b_next!7877))))

(declare-fun tp!27614 () Bool)

(declare-fun b_and!15137 () Bool)

(assert (=> start!35630 (= tp!27614 b_and!15137)))

(declare-fun b!357264 () Bool)

(declare-fun e!218763 () Bool)

(declare-fun tp_is_empty!8075 () Bool)

(assert (=> b!357264 (= e!218763 tp_is_empty!8075)))

(declare-fun b!357265 () Bool)

(declare-fun res!198495 () Bool)

(declare-fun e!218767 () Bool)

(assert (=> b!357265 (=> (not res!198495) (not e!218767))))

(declare-datatypes ((array!19685 0))(
  ( (array!19686 (arr!9333 (Array (_ BitVec 32) (_ BitVec 64))) (size!9685 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19685)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19685 (_ BitVec 32)) Bool)

(assert (=> b!357265 (= res!198495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13620 () Bool)

(declare-fun mapRes!13620 () Bool)

(assert (=> mapIsEmpty!13620 mapRes!13620))

(declare-fun b!357266 () Bool)

(declare-fun e!218764 () Bool)

(declare-fun e!218768 () Bool)

(assert (=> b!357266 (= e!218764 (and e!218768 mapRes!13620))))

(declare-fun condMapEmpty!13620 () Bool)

(declare-datatypes ((V!11743 0))(
  ( (V!11744 (val!4082 Int)) )
))
(declare-datatypes ((ValueCell!3694 0))(
  ( (ValueCellFull!3694 (v!6272 V!11743)) (EmptyCell!3694) )
))
(declare-datatypes ((array!19687 0))(
  ( (array!19688 (arr!9334 (Array (_ BitVec 32) ValueCell!3694)) (size!9686 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19687)

(declare-fun mapDefault!13620 () ValueCell!3694)

