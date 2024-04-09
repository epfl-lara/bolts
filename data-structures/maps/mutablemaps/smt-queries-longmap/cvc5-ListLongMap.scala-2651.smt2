; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39732 () Bool)

(assert start!39732)

(declare-fun b_free!9991 () Bool)

(declare-fun b_next!9991 () Bool)

(assert (=> start!39732 (= b_free!9991 (not b_next!9991))))

(declare-fun tp!35501 () Bool)

(declare-fun b_and!17665 () Bool)

(assert (=> start!39732 (= tp!35501 b_and!17665)))

(declare-fun b!427006 () Bool)

(declare-fun res!250480 () Bool)

(declare-fun e!253228 () Bool)

(assert (=> b!427006 (=> (not res!250480) (not e!253228))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427006 (= res!250480 (validMask!0 mask!1025))))

(declare-fun b!427007 () Bool)

(declare-fun res!250475 () Bool)

(assert (=> b!427007 (=> (not res!250475) (not e!253228))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427007 (= res!250475 (validKeyInArray!0 k!794))))

(declare-fun b!427008 () Bool)

(declare-fun e!253229 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26105 0))(
  ( (array!26106 (arr!12499 (Array (_ BitVec 32) (_ BitVec 64))) (size!12851 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26105)

(assert (=> b!427008 (= e!253229 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!12851 _keys!709))))))

(declare-fun res!250476 () Bool)

(assert (=> start!39732 (=> (not res!250476) (not e!253228))))

(assert (=> start!39732 (= res!250476 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12851 _keys!709))))))

(assert (=> start!39732 e!253228))

(declare-fun tp_is_empty!11143 () Bool)

(assert (=> start!39732 tp_is_empty!11143))

(assert (=> start!39732 tp!35501))

(assert (=> start!39732 true))

(declare-datatypes ((V!15963 0))(
  ( (V!15964 (val!5616 Int)) )
))
(declare-datatypes ((ValueCell!5228 0))(
  ( (ValueCellFull!5228 (v!7859 V!15963)) (EmptyCell!5228) )
))
(declare-datatypes ((array!26107 0))(
  ( (array!26108 (arr!12500 (Array (_ BitVec 32) ValueCell!5228)) (size!12852 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26107)

(declare-fun e!253233 () Bool)

(declare-fun array_inv!9100 (array!26107) Bool)

(assert (=> start!39732 (and (array_inv!9100 _values!549) e!253233)))

(declare-fun array_inv!9101 (array!26105) Bool)

(assert (=> start!39732 (array_inv!9101 _keys!709)))

(declare-fun mapNonEmpty!18336 () Bool)

(declare-fun mapRes!18336 () Bool)

(declare-fun tp!35502 () Bool)

(declare-fun e!253234 () Bool)

(assert (=> mapNonEmpty!18336 (= mapRes!18336 (and tp!35502 e!253234))))

(declare-fun mapKey!18336 () (_ BitVec 32))

(declare-fun mapValue!18336 () ValueCell!5228)

(declare-fun mapRest!18336 () (Array (_ BitVec 32) ValueCell!5228))

(assert (=> mapNonEmpty!18336 (= (arr!12500 _values!549) (store mapRest!18336 mapKey!18336 mapValue!18336))))

(declare-fun b!427009 () Bool)

(declare-fun e!253230 () Bool)

(assert (=> b!427009 (= e!253228 e!253230)))

(declare-fun res!250482 () Bool)

(assert (=> b!427009 (=> (not res!250482) (not e!253230))))

(declare-fun lt!195162 () array!26105)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26105 (_ BitVec 32)) Bool)

(assert (=> b!427009 (= res!250482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195162 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427009 (= lt!195162 (array!26106 (store (arr!12499 _keys!709) i!563 k!794) (size!12851 _keys!709)))))

(declare-fun mapIsEmpty!18336 () Bool)

(assert (=> mapIsEmpty!18336 mapRes!18336))

(declare-fun b!427010 () Bool)

(declare-fun res!250481 () Bool)

(assert (=> b!427010 (=> (not res!250481) (not e!253228))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!427010 (= res!250481 (and (= (size!12852 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12851 _keys!709) (size!12852 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427011 () Bool)

(declare-fun e!253227 () Bool)

(assert (=> b!427011 (= e!253230 e!253227)))

(declare-fun res!250485 () Bool)

(assert (=> b!427011 (=> (not res!250485) (not e!253227))))

(assert (=> b!427011 (= res!250485 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15963)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!195161 () array!26107)

(declare-fun zeroValue!515 () V!15963)

(declare-datatypes ((tuple2!7318 0))(
  ( (tuple2!7319 (_1!3669 (_ BitVec 64)) (_2!3669 V!15963)) )
))
(declare-datatypes ((List!7367 0))(
  ( (Nil!7364) (Cons!7363 (h!8219 tuple2!7318) (t!12819 List!7367)) )
))
(declare-datatypes ((ListLongMap!6245 0))(
  ( (ListLongMap!6246 (toList!3138 List!7367)) )
))
(declare-fun lt!195165 () ListLongMap!6245)

(declare-fun getCurrentListMapNoExtraKeys!1339 (array!26105 array!26107 (_ BitVec 32) (_ BitVec 32) V!15963 V!15963 (_ BitVec 32) Int) ListLongMap!6245)

(assert (=> b!427011 (= lt!195165 (getCurrentListMapNoExtraKeys!1339 lt!195162 lt!195161 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15963)

(assert (=> b!427011 (= lt!195161 (array!26108 (store (arr!12500 _values!549) i!563 (ValueCellFull!5228 v!412)) (size!12852 _values!549)))))

(declare-fun lt!195164 () ListLongMap!6245)

(assert (=> b!427011 (= lt!195164 (getCurrentListMapNoExtraKeys!1339 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!427012 () Bool)

(declare-fun res!250479 () Bool)

(assert (=> b!427012 (=> (not res!250479) (not e!253228))))

(assert (=> b!427012 (= res!250479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!427013 () Bool)

(assert (=> b!427013 (= e!253227 (not e!253229))))

(declare-fun res!250483 () Bool)

(assert (=> b!427013 (=> res!250483 e!253229)))

(assert (=> b!427013 (= res!250483 (not (validKeyInArray!0 (select (arr!12499 _keys!709) from!863))))))

(declare-fun +!1291 (ListLongMap!6245 tuple2!7318) ListLongMap!6245)

(assert (=> b!427013 (= (getCurrentListMapNoExtraKeys!1339 lt!195162 lt!195161 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1291 (getCurrentListMapNoExtraKeys!1339 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7319 k!794 v!412)))))

(declare-datatypes ((Unit!12485 0))(
  ( (Unit!12486) )
))
(declare-fun lt!195163 () Unit!12485)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!493 (array!26105 array!26107 (_ BitVec 32) (_ BitVec 32) V!15963 V!15963 (_ BitVec 32) (_ BitVec 64) V!15963 (_ BitVec 32) Int) Unit!12485)

(assert (=> b!427013 (= lt!195163 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!493 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!427014 () Bool)

(declare-fun res!250484 () Bool)

(assert (=> b!427014 (=> (not res!250484) (not e!253230))))

(declare-datatypes ((List!7368 0))(
  ( (Nil!7365) (Cons!7364 (h!8220 (_ BitVec 64)) (t!12820 List!7368)) )
))
(declare-fun arrayNoDuplicates!0 (array!26105 (_ BitVec 32) List!7368) Bool)

(assert (=> b!427014 (= res!250484 (arrayNoDuplicates!0 lt!195162 #b00000000000000000000000000000000 Nil!7365))))

(declare-fun b!427015 () Bool)

(declare-fun res!250477 () Bool)

(assert (=> b!427015 (=> (not res!250477) (not e!253228))))

(assert (=> b!427015 (= res!250477 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7365))))

(declare-fun b!427016 () Bool)

(declare-fun e!253231 () Bool)

(assert (=> b!427016 (= e!253231 tp_is_empty!11143)))

(declare-fun b!427017 () Bool)

(declare-fun res!250478 () Bool)

(assert (=> b!427017 (=> (not res!250478) (not e!253228))))

(assert (=> b!427017 (= res!250478 (or (= (select (arr!12499 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12499 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427018 () Bool)

(assert (=> b!427018 (= e!253233 (and e!253231 mapRes!18336))))

(declare-fun condMapEmpty!18336 () Bool)

(declare-fun mapDefault!18336 () ValueCell!5228)

