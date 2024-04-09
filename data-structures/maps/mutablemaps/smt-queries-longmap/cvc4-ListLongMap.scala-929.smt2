; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20686 () Bool)

(assert start!20686)

(declare-fun b_free!5333 () Bool)

(declare-fun b_next!5333 () Bool)

(assert (=> start!20686 (= b_free!5333 (not b_next!5333))))

(declare-fun tp!19030 () Bool)

(declare-fun b_and!12097 () Bool)

(assert (=> start!20686 (= tp!19030 b_and!12097)))

(declare-fun b!206562 () Bool)

(declare-fun res!100123 () Bool)

(declare-fun e!134992 () Bool)

(assert (=> b!206562 (=> (not res!100123) (not e!134992))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9588 0))(
  ( (array!9589 (arr!4544 (Array (_ BitVec 32) (_ BitVec 64))) (size!4869 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9588)

(assert (=> b!206562 (= res!100123 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4869 _keys!825))))))

(declare-fun b!206563 () Bool)

(declare-fun res!100121 () Bool)

(assert (=> b!206563 (=> (not res!100121) (not e!134992))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((V!6565 0))(
  ( (V!6566 (val!2639 Int)) )
))
(declare-datatypes ((ValueCell!2251 0))(
  ( (ValueCellFull!2251 (v!4605 V!6565)) (EmptyCell!2251) )
))
(declare-datatypes ((array!9590 0))(
  ( (array!9591 (arr!4545 (Array (_ BitVec 32) ValueCell!2251)) (size!4870 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9590)

(assert (=> b!206563 (= res!100121 (and (= (size!4870 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4869 _keys!825) (size!4870 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206564 () Bool)

(declare-fun res!100122 () Bool)

(assert (=> b!206564 (=> (not res!100122) (not e!134992))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206564 (= res!100122 (validKeyInArray!0 k!843))))

(declare-fun b!206566 () Bool)

(declare-fun e!134993 () Bool)

(declare-fun e!134994 () Bool)

(declare-fun mapRes!8852 () Bool)

(assert (=> b!206566 (= e!134993 (and e!134994 mapRes!8852))))

(declare-fun condMapEmpty!8852 () Bool)

(declare-fun mapDefault!8852 () ValueCell!2251)

