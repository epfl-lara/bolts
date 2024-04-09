; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40910 () Bool)

(assert start!40910)

(declare-fun b_free!10837 () Bool)

(declare-fun b_next!10837 () Bool)

(assert (=> start!40910 (= b_free!10837 (not b_next!10837))))

(declare-fun tp!38338 () Bool)

(declare-fun b_and!18997 () Bool)

(assert (=> start!40910 (= tp!38338 b_and!18997)))

(declare-fun b!454262 () Bool)

(declare-fun res!270743 () Bool)

(declare-fun e!265780 () Bool)

(assert (=> b!454262 (=> (not res!270743) (not e!265780))))

(declare-datatypes ((array!28119 0))(
  ( (array!28120 (arr!13500 (Array (_ BitVec 32) (_ BitVec 64))) (size!13852 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28119)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28119 (_ BitVec 32)) Bool)

(assert (=> b!454262 (= res!270743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19903 () Bool)

(declare-fun mapRes!19903 () Bool)

(declare-fun tp!38337 () Bool)

(declare-fun e!265779 () Bool)

(assert (=> mapNonEmpty!19903 (= mapRes!19903 (and tp!38337 e!265779))))

(declare-datatypes ((V!17339 0))(
  ( (V!17340 (val!6132 Int)) )
))
(declare-datatypes ((ValueCell!5744 0))(
  ( (ValueCellFull!5744 (v!8394 V!17339)) (EmptyCell!5744) )
))
(declare-datatypes ((array!28121 0))(
  ( (array!28122 (arr!13501 (Array (_ BitVec 32) ValueCell!5744)) (size!13853 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28121)

(declare-fun mapRest!19903 () (Array (_ BitVec 32) ValueCell!5744))

(declare-fun mapValue!19903 () ValueCell!5744)

(declare-fun mapKey!19903 () (_ BitVec 32))

(assert (=> mapNonEmpty!19903 (= (arr!13501 _values!549) (store mapRest!19903 mapKey!19903 mapValue!19903))))

(declare-fun mapIsEmpty!19903 () Bool)

(assert (=> mapIsEmpty!19903 mapRes!19903))

(declare-fun b!454264 () Bool)

(declare-fun res!270745 () Bool)

(assert (=> b!454264 (=> (not res!270745) (not e!265780))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454264 (= res!270745 (validKeyInArray!0 k!794))))

(declare-fun b!454265 () Bool)

(declare-fun res!270736 () Bool)

(assert (=> b!454265 (=> (not res!270736) (not e!265780))))

(declare-datatypes ((List!8130 0))(
  ( (Nil!8127) (Cons!8126 (h!8982 (_ BitVec 64)) (t!13966 List!8130)) )
))
(declare-fun arrayNoDuplicates!0 (array!28119 (_ BitVec 32) List!8130) Bool)

(assert (=> b!454265 (= res!270736 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8127))))

(declare-fun b!454266 () Bool)

(declare-fun res!270739 () Bool)

(assert (=> b!454266 (=> (not res!270739) (not e!265780))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454266 (= res!270739 (or (= (select (arr!13500 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13500 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454267 () Bool)

(declare-fun e!265782 () Bool)

(assert (=> b!454267 (= e!265780 e!265782)))

(declare-fun res!270738 () Bool)

(assert (=> b!454267 (=> (not res!270738) (not e!265782))))

(declare-fun lt!206101 () array!28119)

(assert (=> b!454267 (= res!270738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206101 mask!1025))))

(assert (=> b!454267 (= lt!206101 (array!28120 (store (arr!13500 _keys!709) i!563 k!794) (size!13852 _keys!709)))))

(declare-fun b!454268 () Bool)

(declare-fun res!270742 () Bool)

(assert (=> b!454268 (=> (not res!270742) (not e!265780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454268 (= res!270742 (validMask!0 mask!1025))))

(declare-fun b!454269 () Bool)

(declare-fun e!265784 () Bool)

(declare-fun e!265783 () Bool)

(assert (=> b!454269 (= e!265784 (and e!265783 mapRes!19903))))

(declare-fun condMapEmpty!19903 () Bool)

(declare-fun mapDefault!19903 () ValueCell!5744)

