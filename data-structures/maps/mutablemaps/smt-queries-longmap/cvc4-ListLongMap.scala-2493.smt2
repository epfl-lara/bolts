; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38788 () Bool)

(assert start!38788)

(declare-fun b!404207 () Bool)

(declare-fun e!243191 () Bool)

(declare-fun tp_is_empty!10199 () Bool)

(assert (=> b!404207 (= e!243191 tp_is_empty!10199)))

(declare-fun b!404208 () Bool)

(declare-fun res!233167 () Bool)

(declare-fun e!243193 () Bool)

(assert (=> b!404208 (=> (not res!233167) (not e!243193))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24265 0))(
  ( (array!24266 (arr!11579 (Array (_ BitVec 32) (_ BitVec 64))) (size!11931 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24265)

(assert (=> b!404208 (= res!233167 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11931 _keys!709))))))

(declare-fun mapIsEmpty!16920 () Bool)

(declare-fun mapRes!16920 () Bool)

(assert (=> mapIsEmpty!16920 mapRes!16920))

(declare-fun res!233169 () Bool)

(assert (=> start!38788 (=> (not res!233169) (not e!243193))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38788 (= res!233169 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11931 _keys!709))))))

(assert (=> start!38788 e!243193))

(assert (=> start!38788 true))

(declare-datatypes ((V!14703 0))(
  ( (V!14704 (val!5144 Int)) )
))
(declare-datatypes ((ValueCell!4756 0))(
  ( (ValueCellFull!4756 (v!7387 V!14703)) (EmptyCell!4756) )
))
(declare-datatypes ((array!24267 0))(
  ( (array!24268 (arr!11580 (Array (_ BitVec 32) ValueCell!4756)) (size!11932 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24267)

(declare-fun e!243192 () Bool)

(declare-fun array_inv!8462 (array!24267) Bool)

(assert (=> start!38788 (and (array_inv!8462 _values!549) e!243192)))

(declare-fun array_inv!8463 (array!24265) Bool)

(assert (=> start!38788 (array_inv!8463 _keys!709)))

(declare-fun b!404209 () Bool)

(declare-fun res!233164 () Bool)

(assert (=> b!404209 (=> (not res!233164) (not e!243193))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24265 (_ BitVec 32)) Bool)

(assert (=> b!404209 (= res!233164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404210 () Bool)

(declare-fun e!243190 () Bool)

(assert (=> b!404210 (= e!243190 false)))

(declare-fun lt!188138 () Bool)

(declare-fun lt!188139 () array!24265)

(declare-datatypes ((List!6720 0))(
  ( (Nil!6717) (Cons!6716 (h!7572 (_ BitVec 64)) (t!11902 List!6720)) )
))
(declare-fun arrayNoDuplicates!0 (array!24265 (_ BitVec 32) List!6720) Bool)

(assert (=> b!404210 (= lt!188138 (arrayNoDuplicates!0 lt!188139 #b00000000000000000000000000000000 Nil!6717))))

(declare-fun b!404211 () Bool)

(declare-fun res!233168 () Bool)

(assert (=> b!404211 (=> (not res!233168) (not e!243193))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404211 (= res!233168 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!404212 () Bool)

(declare-fun e!243188 () Bool)

(assert (=> b!404212 (= e!243188 tp_is_empty!10199)))

(declare-fun b!404213 () Bool)

(declare-fun res!233171 () Bool)

(assert (=> b!404213 (=> (not res!233171) (not e!243193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404213 (= res!233171 (validMask!0 mask!1025))))

(declare-fun b!404214 () Bool)

(declare-fun res!233166 () Bool)

(assert (=> b!404214 (=> (not res!233166) (not e!243193))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!404214 (= res!233166 (and (= (size!11932 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11931 _keys!709) (size!11932 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404215 () Bool)

(declare-fun res!233163 () Bool)

(assert (=> b!404215 (=> (not res!233163) (not e!243193))))

(assert (=> b!404215 (= res!233163 (or (= (select (arr!11579 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11579 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16920 () Bool)

(declare-fun tp!33039 () Bool)

(assert (=> mapNonEmpty!16920 (= mapRes!16920 (and tp!33039 e!243188))))

(declare-fun mapKey!16920 () (_ BitVec 32))

(declare-fun mapRest!16920 () (Array (_ BitVec 32) ValueCell!4756))

(declare-fun mapValue!16920 () ValueCell!4756)

(assert (=> mapNonEmpty!16920 (= (arr!11580 _values!549) (store mapRest!16920 mapKey!16920 mapValue!16920))))

(declare-fun b!404216 () Bool)

(declare-fun res!233170 () Bool)

(assert (=> b!404216 (=> (not res!233170) (not e!243193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404216 (= res!233170 (validKeyInArray!0 k!794))))

(declare-fun b!404217 () Bool)

(assert (=> b!404217 (= e!243193 e!243190)))

(declare-fun res!233172 () Bool)

(assert (=> b!404217 (=> (not res!233172) (not e!243190))))

(assert (=> b!404217 (= res!233172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188139 mask!1025))))

(assert (=> b!404217 (= lt!188139 (array!24266 (store (arr!11579 _keys!709) i!563 k!794) (size!11931 _keys!709)))))

(declare-fun b!404218 () Bool)

(declare-fun res!233165 () Bool)

(assert (=> b!404218 (=> (not res!233165) (not e!243193))))

(assert (=> b!404218 (= res!233165 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6717))))

(declare-fun b!404219 () Bool)

(assert (=> b!404219 (= e!243192 (and e!243191 mapRes!16920))))

(declare-fun condMapEmpty!16920 () Bool)

(declare-fun mapDefault!16920 () ValueCell!4756)

