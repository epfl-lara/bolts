; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20640 () Bool)

(assert start!20640)

(declare-fun b_free!5287 () Bool)

(declare-fun b_next!5287 () Bool)

(assert (=> start!20640 (= b_free!5287 (not b_next!5287))))

(declare-fun tp!18892 () Bool)

(declare-fun b_and!12051 () Bool)

(assert (=> start!20640 (= tp!18892 b_and!12051)))

(declare-fun b!205768 () Bool)

(declare-fun res!99530 () Bool)

(declare-fun e!134546 () Bool)

(assert (=> b!205768 (=> (not res!99530) (not e!134546))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9496 0))(
  ( (array!9497 (arr!4498 (Array (_ BitVec 32) (_ BitVec 64))) (size!4823 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9496)

(assert (=> b!205768 (= res!99530 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4823 _keys!825))))))

(declare-fun b!205769 () Bool)

(declare-fun res!99531 () Bool)

(assert (=> b!205769 (=> (not res!99531) (not e!134546))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6505 0))(
  ( (V!6506 (val!2616 Int)) )
))
(declare-datatypes ((ValueCell!2228 0))(
  ( (ValueCellFull!2228 (v!4582 V!6505)) (EmptyCell!2228) )
))
(declare-datatypes ((array!9498 0))(
  ( (array!9499 (arr!4499 (Array (_ BitVec 32) ValueCell!2228)) (size!4824 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9498)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!205769 (= res!99531 (and (= (size!4824 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4823 _keys!825) (size!4824 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205770 () Bool)

(declare-fun e!134545 () Bool)

(declare-fun e!134542 () Bool)

(declare-fun mapRes!8783 () Bool)

(assert (=> b!205770 (= e!134545 (and e!134542 mapRes!8783))))

(declare-fun condMapEmpty!8783 () Bool)

(declare-fun mapDefault!8783 () ValueCell!2228)

