; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39532 () Bool)

(assert start!39532)

(declare-fun b_free!9791 () Bool)

(declare-fun b_next!9791 () Bool)

(assert (=> start!39532 (= b_free!9791 (not b_next!9791))))

(declare-fun tp!34901 () Bool)

(declare-fun b_and!17465 () Bool)

(assert (=> start!39532 (= tp!34901 b_and!17465)))

(declare-fun mapIsEmpty!18036 () Bool)

(declare-fun mapRes!18036 () Bool)

(assert (=> mapIsEmpty!18036 mapRes!18036))

(declare-fun mapNonEmpty!18036 () Bool)

(declare-fun tp!34902 () Bool)

(declare-fun e!251271 () Bool)

(assert (=> mapNonEmpty!18036 (= mapRes!18036 (and tp!34902 e!251271))))

(declare-datatypes ((V!15695 0))(
  ( (V!15696 (val!5516 Int)) )
))
(declare-datatypes ((ValueCell!5128 0))(
  ( (ValueCellFull!5128 (v!7759 V!15695)) (EmptyCell!5128) )
))
(declare-fun mapValue!18036 () ValueCell!5128)

(declare-datatypes ((array!25713 0))(
  ( (array!25714 (arr!12303 (Array (_ BitVec 32) ValueCell!5128)) (size!12655 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25713)

(declare-fun mapKey!18036 () (_ BitVec 32))

(declare-fun mapRest!18036 () (Array (_ BitVec 32) ValueCell!5128))

(assert (=> mapNonEmpty!18036 (= (arr!12303 _values!549) (store mapRest!18036 mapKey!18036 mapValue!18036))))

(declare-fun b!422349 () Bool)

(declare-fun res!246724 () Bool)

(declare-fun e!251274 () Bool)

(assert (=> b!422349 (=> (not res!246724) (not e!251274))))

(declare-datatypes ((array!25715 0))(
  ( (array!25716 (arr!12304 (Array (_ BitVec 32) (_ BitVec 64))) (size!12656 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25715)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422349 (= res!246724 (or (= (select (arr!12304 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12304 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422350 () Bool)

(declare-fun e!251275 () Bool)

(assert (=> b!422350 (= e!251274 e!251275)))

(declare-fun res!246725 () Bool)

(assert (=> b!422350 (=> (not res!246725) (not e!251275))))

(declare-fun lt!193953 () array!25715)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25715 (_ BitVec 32)) Bool)

(assert (=> b!422350 (= res!246725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193953 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!422350 (= lt!193953 (array!25716 (store (arr!12304 _keys!709) i!563 k!794) (size!12656 _keys!709)))))

(declare-fun b!422351 () Bool)

(declare-fun res!246718 () Bool)

(assert (=> b!422351 (=> (not res!246718) (not e!251274))))

(assert (=> b!422351 (= res!246718 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12656 _keys!709))))))

(declare-fun b!422352 () Bool)

(declare-fun tp_is_empty!10943 () Bool)

(assert (=> b!422352 (= e!251271 tp_is_empty!10943)))

(declare-fun res!246716 () Bool)

(assert (=> start!39532 (=> (not res!246716) (not e!251274))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39532 (= res!246716 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12656 _keys!709))))))

(assert (=> start!39532 e!251274))

(assert (=> start!39532 tp_is_empty!10943))

(assert (=> start!39532 tp!34901))

(assert (=> start!39532 true))

(declare-fun e!251270 () Bool)

(declare-fun array_inv!8962 (array!25713) Bool)

(assert (=> start!39532 (and (array_inv!8962 _values!549) e!251270)))

(declare-fun array_inv!8963 (array!25715) Bool)

(assert (=> start!39532 (array_inv!8963 _keys!709)))

(declare-fun b!422353 () Bool)

(declare-fun res!246720 () Bool)

(assert (=> b!422353 (=> (not res!246720) (not e!251274))))

(assert (=> b!422353 (= res!246720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422354 () Bool)

(declare-fun res!246717 () Bool)

(assert (=> b!422354 (=> (not res!246717) (not e!251274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422354 (= res!246717 (validKeyInArray!0 k!794))))

(declare-fun b!422355 () Bool)

(declare-fun res!246719 () Bool)

(assert (=> b!422355 (=> (not res!246719) (not e!251275))))

(declare-datatypes ((List!7213 0))(
  ( (Nil!7210) (Cons!7209 (h!8065 (_ BitVec 64)) (t!12665 List!7213)) )
))
(declare-fun arrayNoDuplicates!0 (array!25715 (_ BitVec 32) List!7213) Bool)

(assert (=> b!422355 (= res!246719 (arrayNoDuplicates!0 lt!193953 #b00000000000000000000000000000000 Nil!7210))))

(declare-fun b!422356 () Bool)

(declare-fun e!251272 () Bool)

(assert (=> b!422356 (= e!251270 (and e!251272 mapRes!18036))))

(declare-fun condMapEmpty!18036 () Bool)

(declare-fun mapDefault!18036 () ValueCell!5128)

