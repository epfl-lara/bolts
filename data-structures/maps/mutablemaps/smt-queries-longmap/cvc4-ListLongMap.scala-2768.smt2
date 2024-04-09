; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40472 () Bool)

(assert start!40472)

(declare-fun b!445207 () Bool)

(declare-fun e!261710 () Bool)

(declare-fun tp_is_empty!11849 () Bool)

(assert (=> b!445207 (= e!261710 tp_is_empty!11849)))

(declare-fun b!445208 () Bool)

(declare-fun res!264241 () Bool)

(declare-fun e!261711 () Bool)

(assert (=> b!445208 (=> (not res!264241) (not e!261711))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27467 0))(
  ( (array!27468 (arr!13178 (Array (_ BitVec 32) (_ BitVec 64))) (size!13530 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27467)

(assert (=> b!445208 (= res!264241 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13530 _keys!709))))))

(declare-fun e!261709 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun b!445209 () Bool)

(assert (=> b!445209 (= e!261709 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13530 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsge (bvsub (size!13530 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (bvsub (size!13530 _keys!709) from!863))))))

(declare-fun b!445210 () Bool)

(declare-fun res!264239 () Bool)

(assert (=> b!445210 (=> (not res!264239) (not e!261709))))

(declare-fun lt!203592 () array!27467)

(declare-datatypes ((List!7862 0))(
  ( (Nil!7859) (Cons!7858 (h!8714 (_ BitVec 64)) (t!13628 List!7862)) )
))
(declare-fun arrayNoDuplicates!0 (array!27467 (_ BitVec 32) List!7862) Bool)

(assert (=> b!445210 (= res!264239 (arrayNoDuplicates!0 lt!203592 #b00000000000000000000000000000000 Nil!7859))))

(declare-fun b!445211 () Bool)

(declare-fun res!264236 () Bool)

(assert (=> b!445211 (=> (not res!264236) (not e!261711))))

(assert (=> b!445211 (= res!264236 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7859))))

(declare-fun b!445212 () Bool)

(declare-fun res!264234 () Bool)

(assert (=> b!445212 (=> (not res!264234) (not e!261711))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445212 (= res!264234 (validMask!0 mask!1025))))

(declare-fun b!445213 () Bool)

(declare-fun res!264240 () Bool)

(assert (=> b!445213 (=> (not res!264240) (not e!261711))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445213 (= res!264240 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!445214 () Bool)

(declare-fun res!264242 () Bool)

(assert (=> b!445214 (=> (not res!264242) (not e!261711))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445214 (= res!264242 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!19401 () Bool)

(declare-fun mapRes!19401 () Bool)

(declare-fun tp!37383 () Bool)

(assert (=> mapNonEmpty!19401 (= mapRes!19401 (and tp!37383 e!261710))))

(declare-fun mapKey!19401 () (_ BitVec 32))

(declare-datatypes ((V!16903 0))(
  ( (V!16904 (val!5969 Int)) )
))
(declare-datatypes ((ValueCell!5581 0))(
  ( (ValueCellFull!5581 (v!8216 V!16903)) (EmptyCell!5581) )
))
(declare-datatypes ((array!27469 0))(
  ( (array!27470 (arr!13179 (Array (_ BitVec 32) ValueCell!5581)) (size!13531 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27469)

(declare-fun mapValue!19401 () ValueCell!5581)

(declare-fun mapRest!19401 () (Array (_ BitVec 32) ValueCell!5581))

(assert (=> mapNonEmpty!19401 (= (arr!13179 _values!549) (store mapRest!19401 mapKey!19401 mapValue!19401))))

(declare-fun res!264244 () Bool)

(assert (=> start!40472 (=> (not res!264244) (not e!261711))))

(assert (=> start!40472 (= res!264244 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13530 _keys!709))))))

(assert (=> start!40472 e!261711))

(assert (=> start!40472 true))

(declare-fun e!261708 () Bool)

(declare-fun array_inv!9548 (array!27469) Bool)

(assert (=> start!40472 (and (array_inv!9548 _values!549) e!261708)))

(declare-fun array_inv!9549 (array!27467) Bool)

(assert (=> start!40472 (array_inv!9549 _keys!709)))

(declare-fun b!445215 () Bool)

(declare-fun e!261706 () Bool)

(assert (=> b!445215 (= e!261706 tp_is_empty!11849)))

(declare-fun mapIsEmpty!19401 () Bool)

(assert (=> mapIsEmpty!19401 mapRes!19401))

(declare-fun b!445216 () Bool)

(assert (=> b!445216 (= e!261708 (and e!261706 mapRes!19401))))

(declare-fun condMapEmpty!19401 () Bool)

(declare-fun mapDefault!19401 () ValueCell!5581)

