; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20274 () Bool)

(assert start!20274)

(declare-fun b_free!4921 () Bool)

(declare-fun b_next!4921 () Bool)

(assert (=> start!20274 (= b_free!4921 (not b_next!4921))))

(declare-fun tp!17794 () Bool)

(declare-fun b_and!11685 () Bool)

(assert (=> start!20274 (= tp!17794 b_and!11685)))

(declare-fun b!199320 () Bool)

(declare-fun e!130866 () Bool)

(declare-fun tp_is_empty!4777 () Bool)

(assert (=> b!199320 (= e!130866 tp_is_empty!4777)))

(declare-fun b!199321 () Bool)

(declare-fun res!94735 () Bool)

(declare-fun e!130869 () Bool)

(assert (=> b!199321 (=> (not res!94735) (not e!130869))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8794 0))(
  ( (array!8795 (arr!4147 (Array (_ BitVec 32) (_ BitVec 64))) (size!4472 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8794)

(assert (=> b!199321 (= res!94735 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4472 _keys!825))))))

(declare-fun b!199322 () Bool)

(declare-fun res!94734 () Bool)

(assert (=> b!199322 (=> (not res!94734) (not e!130869))))

(declare-datatypes ((List!2619 0))(
  ( (Nil!2616) (Cons!2615 (h!3257 (_ BitVec 64)) (t!7558 List!2619)) )
))
(declare-fun arrayNoDuplicates!0 (array!8794 (_ BitVec 32) List!2619) Bool)

(assert (=> b!199322 (= res!94734 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2616))))

(declare-fun b!199323 () Bool)

(declare-fun e!130868 () Bool)

(declare-fun e!130870 () Bool)

(declare-fun mapRes!8234 () Bool)

(assert (=> b!199323 (= e!130868 (and e!130870 mapRes!8234))))

(declare-fun condMapEmpty!8234 () Bool)

(declare-datatypes ((V!6017 0))(
  ( (V!6018 (val!2433 Int)) )
))
(declare-datatypes ((ValueCell!2045 0))(
  ( (ValueCellFull!2045 (v!4399 V!6017)) (EmptyCell!2045) )
))
(declare-datatypes ((array!8796 0))(
  ( (array!8797 (arr!4148 (Array (_ BitVec 32) ValueCell!2045)) (size!4473 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8796)

(declare-fun mapDefault!8234 () ValueCell!2045)

