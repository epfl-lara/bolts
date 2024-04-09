; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36932 () Bool)

(assert start!36932)

(declare-fun b_free!8051 () Bool)

(declare-fun b_next!8051 () Bool)

(assert (=> start!36932 (= b_free!8051 (not b_next!8051))))

(declare-fun tp!28868 () Bool)

(declare-fun b_and!15311 () Bool)

(assert (=> start!36932 (= tp!28868 b_and!15311)))

(declare-fun b!369839 () Bool)

(declare-fun res!207673 () Bool)

(declare-fun e!225963 () Bool)

(assert (=> b!369839 (=> (not res!207673) (not e!225963))))

(declare-datatypes ((array!21319 0))(
  ( (array!21320 (arr!10125 (Array (_ BitVec 32) (_ BitVec 64))) (size!10477 (_ BitVec 32))) )
))
(declare-fun lt!169835 () array!21319)

(declare-datatypes ((List!5682 0))(
  ( (Nil!5679) (Cons!5678 (h!6534 (_ BitVec 64)) (t!10840 List!5682)) )
))
(declare-fun arrayNoDuplicates!0 (array!21319 (_ BitVec 32) List!5682) Bool)

(assert (=> b!369839 (= res!207673 (arrayNoDuplicates!0 lt!169835 #b00000000000000000000000000000000 Nil!5679))))

(declare-fun b!369840 () Bool)

(declare-fun res!207666 () Bool)

(declare-fun e!225965 () Bool)

(assert (=> b!369840 (=> (not res!207666) (not e!225965))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun _keys!658 () array!21319)

(declare-fun mask!970 () (_ BitVec 32))

(declare-datatypes ((V!12703 0))(
  ( (V!12704 (val!4394 Int)) )
))
(declare-datatypes ((ValueCell!4006 0))(
  ( (ValueCellFull!4006 (v!6587 V!12703)) (EmptyCell!4006) )
))
(declare-datatypes ((array!21321 0))(
  ( (array!21322 (arr!10126 (Array (_ BitVec 32) ValueCell!4006)) (size!10478 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21321)

(assert (=> b!369840 (= res!207666 (and (= (size!10478 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10477 _keys!658) (size!10478 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369841 () Bool)

(declare-fun e!225962 () Bool)

(declare-fun tp_is_empty!8699 () Bool)

(assert (=> b!369841 (= e!225962 tp_is_empty!8699)))

(declare-fun b!369842 () Bool)

(declare-fun e!225964 () Bool)

(declare-fun mapRes!14613 () Bool)

(assert (=> b!369842 (= e!225964 (and e!225962 mapRes!14613))))

(declare-fun condMapEmpty!14613 () Bool)

(declare-fun mapDefault!14613 () ValueCell!4006)

