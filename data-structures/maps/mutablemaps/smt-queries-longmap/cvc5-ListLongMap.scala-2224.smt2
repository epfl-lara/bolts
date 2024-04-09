; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36814 () Bool)

(assert start!36814)

(declare-fun b_free!7933 () Bool)

(declare-fun b_next!7933 () Bool)

(assert (=> start!36814 (= b_free!7933 (not b_next!7933))))

(declare-fun tp!28515 () Bool)

(declare-fun b_and!15193 () Bool)

(assert (=> start!36814 (= tp!28515 b_and!15193)))

(declare-fun b!367538 () Bool)

(declare-fun res!205898 () Bool)

(declare-fun e!224899 () Bool)

(assert (=> b!367538 (=> (not res!205898) (not e!224899))))

(declare-datatypes ((array!21087 0))(
  ( (array!21088 (arr!10009 (Array (_ BitVec 32) (_ BitVec 64))) (size!10361 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21087)

(declare-datatypes ((List!5595 0))(
  ( (Nil!5592) (Cons!5591 (h!6447 (_ BitVec 64)) (t!10753 List!5595)) )
))
(declare-fun arrayNoDuplicates!0 (array!21087 (_ BitVec 32) List!5595) Bool)

(assert (=> b!367538 (= res!205898 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5592))))

(declare-fun b!367539 () Bool)

(declare-fun res!205904 () Bool)

(assert (=> b!367539 (=> (not res!205904) (not e!224899))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12547 0))(
  ( (V!12548 (val!4335 Int)) )
))
(declare-datatypes ((ValueCell!3947 0))(
  ( (ValueCellFull!3947 (v!6528 V!12547)) (EmptyCell!3947) )
))
(declare-datatypes ((array!21089 0))(
  ( (array!21090 (arr!10010 (Array (_ BitVec 32) ValueCell!3947)) (size!10362 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21089)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!367539 (= res!205904 (and (= (size!10362 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10361 _keys!658) (size!10362 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367540 () Bool)

(declare-fun res!205895 () Bool)

(declare-fun e!224904 () Bool)

(assert (=> b!367540 (=> (not res!205895) (not e!224904))))

(declare-fun lt!169383 () array!21087)

(assert (=> b!367540 (= res!205895 (arrayNoDuplicates!0 lt!169383 #b00000000000000000000000000000000 Nil!5592))))

(declare-fun b!367541 () Bool)

(declare-fun e!224901 () Bool)

(declare-fun e!224902 () Bool)

(declare-fun mapRes!14436 () Bool)

(assert (=> b!367541 (= e!224901 (and e!224902 mapRes!14436))))

(declare-fun condMapEmpty!14436 () Bool)

(declare-fun mapDefault!14436 () ValueCell!3947)

