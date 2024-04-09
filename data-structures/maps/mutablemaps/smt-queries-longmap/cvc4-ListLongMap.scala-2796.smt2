; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40676 () Bool)

(assert start!40676)

(declare-fun b_free!10679 () Bool)

(declare-fun b_next!10679 () Bool)

(assert (=> start!40676 (= b_free!10679 (not b_next!10679))))

(declare-fun tp!37856 () Bool)

(declare-fun b_and!18705 () Bool)

(assert (=> start!40676 (= tp!37856 b_and!18705)))

(declare-fun b!449252 () Bool)

(declare-fun e!263427 () Bool)

(assert (=> b!449252 (= e!263427 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17127 0))(
  ( (V!17128 (val!6053 Int)) )
))
(declare-fun minValue!515 () V!17127)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5665 0))(
  ( (ValueCellFull!5665 (v!8304 V!17127)) (EmptyCell!5665) )
))
(declare-datatypes ((array!27801 0))(
  ( (array!27802 (arr!13343 (Array (_ BitVec 32) ValueCell!5665)) (size!13695 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27801)

(declare-fun zeroValue!515 () V!17127)

(declare-datatypes ((array!27803 0))(
  ( (array!27804 (arr!13344 (Array (_ BitVec 32) (_ BitVec 64))) (size!13696 (_ BitVec 32))) )
))
(declare-fun lt!204330 () array!27803)

(declare-fun v!412 () V!17127)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!7882 0))(
  ( (tuple2!7883 (_1!3951 (_ BitVec 64)) (_2!3951 V!17127)) )
))
(declare-datatypes ((List!7993 0))(
  ( (Nil!7990) (Cons!7989 (h!8845 tuple2!7882) (t!13763 List!7993)) )
))
(declare-datatypes ((ListLongMap!6809 0))(
  ( (ListLongMap!6810 (toList!3420 List!7993)) )
))
(declare-fun lt!204331 () ListLongMap!6809)

(declare-fun getCurrentListMapNoExtraKeys!1600 (array!27803 array!27801 (_ BitVec 32) (_ BitVec 32) V!17127 V!17127 (_ BitVec 32) Int) ListLongMap!6809)

(assert (=> b!449252 (= lt!204331 (getCurrentListMapNoExtraKeys!1600 lt!204330 (array!27802 (store (arr!13343 _values!549) i!563 (ValueCellFull!5665 v!412)) (size!13695 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _keys!709 () array!27803)

(declare-fun lt!204329 () ListLongMap!6809)

(assert (=> b!449252 (= lt!204329 (getCurrentListMapNoExtraKeys!1600 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449253 () Bool)

(declare-fun res!267300 () Bool)

(declare-fun e!263423 () Bool)

(assert (=> b!449253 (=> (not res!267300) (not e!263423))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27803 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449253 (= res!267300 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!449254 () Bool)

(declare-fun res!267301 () Bool)

(assert (=> b!449254 (=> (not res!267301) (not e!263423))))

(declare-datatypes ((List!7994 0))(
  ( (Nil!7991) (Cons!7990 (h!8846 (_ BitVec 64)) (t!13764 List!7994)) )
))
(declare-fun arrayNoDuplicates!0 (array!27803 (_ BitVec 32) List!7994) Bool)

(assert (=> b!449254 (= res!267301 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7991))))

(declare-fun mapIsEmpty!19659 () Bool)

(declare-fun mapRes!19659 () Bool)

(assert (=> mapIsEmpty!19659 mapRes!19659))

(declare-fun b!449255 () Bool)

(declare-fun e!263424 () Bool)

(declare-fun tp_is_empty!12017 () Bool)

(assert (=> b!449255 (= e!263424 tp_is_empty!12017)))

(declare-fun b!449256 () Bool)

(declare-fun res!267296 () Bool)

(assert (=> b!449256 (=> (not res!267296) (not e!263423))))

(assert (=> b!449256 (= res!267296 (and (= (size!13695 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13696 _keys!709) (size!13695 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449257 () Bool)

(assert (=> b!449257 (= e!263423 e!263427)))

(declare-fun res!267306 () Bool)

(assert (=> b!449257 (=> (not res!267306) (not e!263427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27803 (_ BitVec 32)) Bool)

(assert (=> b!449257 (= res!267306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204330 mask!1025))))

(assert (=> b!449257 (= lt!204330 (array!27804 (store (arr!13344 _keys!709) i!563 k!794) (size!13696 _keys!709)))))

(declare-fun b!449258 () Bool)

(declare-fun res!267305 () Bool)

(assert (=> b!449258 (=> (not res!267305) (not e!263423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449258 (= res!267305 (validKeyInArray!0 k!794))))

(declare-fun b!449259 () Bool)

(declare-fun res!267302 () Bool)

(assert (=> b!449259 (=> (not res!267302) (not e!263427))))

(assert (=> b!449259 (= res!267302 (arrayNoDuplicates!0 lt!204330 #b00000000000000000000000000000000 Nil!7991))))

(declare-fun b!449260 () Bool)

(declare-fun res!267295 () Bool)

(assert (=> b!449260 (=> (not res!267295) (not e!263423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449260 (= res!267295 (validMask!0 mask!1025))))

(declare-fun b!449262 () Bool)

(declare-fun e!263426 () Bool)

(assert (=> b!449262 (= e!263426 (and e!263424 mapRes!19659))))

(declare-fun condMapEmpty!19659 () Bool)

(declare-fun mapDefault!19659 () ValueCell!5665)

