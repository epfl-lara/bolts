; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38496 () Bool)

(assert start!38496)

(declare-fun b!397217 () Bool)

(declare-fun res!228135 () Bool)

(declare-fun e!240237 () Bool)

(assert (=> b!397217 (=> (not res!228135) (not e!240237))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397217 (= res!228135 (validKeyInArray!0 k!794))))

(declare-fun b!397219 () Bool)

(declare-fun res!228136 () Bool)

(assert (=> b!397219 (=> (not res!228136) (not e!240237))))

(declare-datatypes ((array!23697 0))(
  ( (array!23698 (arr!11295 (Array (_ BitVec 32) (_ BitVec 64))) (size!11647 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23697)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23697 (_ BitVec 32)) Bool)

(assert (=> b!397219 (= res!228136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397220 () Bool)

(declare-fun res!228141 () Bool)

(assert (=> b!397220 (=> (not res!228141) (not e!240237))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397220 (= res!228141 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11647 _keys!709))))))

(declare-fun b!397221 () Bool)

(declare-fun res!228137 () Bool)

(assert (=> b!397221 (=> (not res!228137) (not e!240237))))

(assert (=> b!397221 (= res!228137 (or (= (select (arr!11295 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11295 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397222 () Bool)

(declare-fun e!240239 () Bool)

(assert (=> b!397222 (= e!240239 false)))

(declare-fun lt!187262 () Bool)

(declare-fun lt!187263 () array!23697)

(declare-datatypes ((List!6510 0))(
  ( (Nil!6507) (Cons!6506 (h!7362 (_ BitVec 64)) (t!11692 List!6510)) )
))
(declare-fun arrayNoDuplicates!0 (array!23697 (_ BitVec 32) List!6510) Bool)

(assert (=> b!397222 (= lt!187262 (arrayNoDuplicates!0 lt!187263 #b00000000000000000000000000000000 Nil!6507))))

(declare-fun b!397223 () Bool)

(declare-fun res!228138 () Bool)

(assert (=> b!397223 (=> (not res!228138) (not e!240237))))

(declare-fun arrayContainsKey!0 (array!23697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397223 (= res!228138 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397224 () Bool)

(assert (=> b!397224 (= e!240237 e!240239)))

(declare-fun res!228140 () Bool)

(assert (=> b!397224 (=> (not res!228140) (not e!240239))))

(assert (=> b!397224 (= res!228140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187263 mask!1025))))

(assert (=> b!397224 (= lt!187263 (array!23698 (store (arr!11295 _keys!709) i!563 k!794) (size!11647 _keys!709)))))

(declare-fun mapNonEmpty!16482 () Bool)

(declare-fun mapRes!16482 () Bool)

(declare-fun tp!32277 () Bool)

(declare-fun e!240241 () Bool)

(assert (=> mapNonEmpty!16482 (= mapRes!16482 (and tp!32277 e!240241))))

(declare-datatypes ((V!14315 0))(
  ( (V!14316 (val!4998 Int)) )
))
(declare-datatypes ((ValueCell!4610 0))(
  ( (ValueCellFull!4610 (v!7241 V!14315)) (EmptyCell!4610) )
))
(declare-fun mapValue!16482 () ValueCell!4610)

(declare-datatypes ((array!23699 0))(
  ( (array!23700 (arr!11296 (Array (_ BitVec 32) ValueCell!4610)) (size!11648 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23699)

(declare-fun mapKey!16482 () (_ BitVec 32))

(declare-fun mapRest!16482 () (Array (_ BitVec 32) ValueCell!4610))

(assert (=> mapNonEmpty!16482 (= (arr!11296 _values!549) (store mapRest!16482 mapKey!16482 mapValue!16482))))

(declare-fun b!397225 () Bool)

(declare-fun res!228144 () Bool)

(assert (=> b!397225 (=> (not res!228144) (not e!240237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397225 (= res!228144 (validMask!0 mask!1025))))

(declare-fun b!397226 () Bool)

(declare-fun e!240238 () Bool)

(declare-fun e!240236 () Bool)

(assert (=> b!397226 (= e!240238 (and e!240236 mapRes!16482))))

(declare-fun condMapEmpty!16482 () Bool)

(declare-fun mapDefault!16482 () ValueCell!4610)

