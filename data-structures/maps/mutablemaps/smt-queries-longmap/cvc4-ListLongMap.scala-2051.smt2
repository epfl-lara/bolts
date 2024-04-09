; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35486 () Bool)

(assert start!35486)

(declare-fun b_free!7865 () Bool)

(declare-fun b_next!7865 () Bool)

(assert (=> start!35486 (= b_free!7865 (not b_next!7865))))

(declare-fun tp!27381 () Bool)

(declare-fun b_and!15125 () Bool)

(assert (=> start!35486 (= tp!27381 b_and!15125)))

(declare-fun b!355365 () Bool)

(declare-fun res!197238 () Bool)

(declare-fun e!217666 () Bool)

(assert (=> b!355365 (=> (not res!197238) (not e!217666))))

(declare-datatypes ((array!19409 0))(
  ( (array!19410 (arr!9195 (Array (_ BitVec 32) (_ BitVec 64))) (size!9547 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19409)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!355365 (= res!197238 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!355366 () Bool)

(declare-fun e!217669 () Bool)

(declare-fun e!217667 () Bool)

(declare-fun mapRes!13404 () Bool)

(assert (=> b!355366 (= e!217669 (and e!217667 mapRes!13404))))

(declare-fun condMapEmpty!13404 () Bool)

(declare-datatypes ((V!11551 0))(
  ( (V!11552 (val!4010 Int)) )
))
(declare-datatypes ((ValueCell!3622 0))(
  ( (ValueCellFull!3622 (v!6200 V!11551)) (EmptyCell!3622) )
))
(declare-datatypes ((array!19411 0))(
  ( (array!19412 (arr!9196 (Array (_ BitVec 32) ValueCell!3622)) (size!9548 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19411)

(declare-fun mapDefault!13404 () ValueCell!3622)

