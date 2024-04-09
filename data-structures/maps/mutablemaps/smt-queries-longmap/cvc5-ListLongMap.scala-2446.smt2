; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38502 () Bool)

(assert start!38502)

(declare-fun b!397334 () Bool)

(declare-fun e!240294 () Bool)

(declare-fun tp_is_empty!9913 () Bool)

(assert (=> b!397334 (= e!240294 tp_is_empty!9913)))

(declare-fun mapNonEmpty!16491 () Bool)

(declare-fun mapRes!16491 () Bool)

(declare-fun tp!32286 () Bool)

(assert (=> mapNonEmpty!16491 (= mapRes!16491 (and tp!32286 e!240294))))

(declare-datatypes ((V!14323 0))(
  ( (V!14324 (val!5001 Int)) )
))
(declare-datatypes ((ValueCell!4613 0))(
  ( (ValueCellFull!4613 (v!7244 V!14323)) (EmptyCell!4613) )
))
(declare-datatypes ((array!23709 0))(
  ( (array!23710 (arr!11301 (Array (_ BitVec 32) ValueCell!4613)) (size!11653 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23709)

(declare-fun mapRest!16491 () (Array (_ BitVec 32) ValueCell!4613))

(declare-fun mapValue!16491 () ValueCell!4613)

(declare-fun mapKey!16491 () (_ BitVec 32))

(assert (=> mapNonEmpty!16491 (= (arr!11301 _values!549) (store mapRest!16491 mapKey!16491 mapValue!16491))))

(declare-fun b!397335 () Bool)

(declare-fun e!240291 () Bool)

(assert (=> b!397335 (= e!240291 false)))

(declare-fun lt!187281 () Bool)

(declare-datatypes ((array!23711 0))(
  ( (array!23712 (arr!11302 (Array (_ BitVec 32) (_ BitVec 64))) (size!11654 (_ BitVec 32))) )
))
(declare-fun lt!187280 () array!23711)

(declare-datatypes ((List!6513 0))(
  ( (Nil!6510) (Cons!6509 (h!7365 (_ BitVec 64)) (t!11695 List!6513)) )
))
(declare-fun arrayNoDuplicates!0 (array!23711 (_ BitVec 32) List!6513) Bool)

(assert (=> b!397335 (= lt!187281 (arrayNoDuplicates!0 lt!187280 #b00000000000000000000000000000000 Nil!6510))))

(declare-fun mapIsEmpty!16491 () Bool)

(assert (=> mapIsEmpty!16491 mapRes!16491))

(declare-fun b!397336 () Bool)

(declare-fun e!240293 () Bool)

(assert (=> b!397336 (= e!240293 e!240291)))

(declare-fun res!228229 () Bool)

(assert (=> b!397336 (=> (not res!228229) (not e!240291))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23711 (_ BitVec 32)) Bool)

(assert (=> b!397336 (= res!228229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187280 mask!1025))))

(declare-fun _keys!709 () array!23711)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397336 (= lt!187280 (array!23712 (store (arr!11302 _keys!709) i!563 k!794) (size!11654 _keys!709)))))

(declare-fun b!397337 () Bool)

(declare-fun res!228233 () Bool)

(assert (=> b!397337 (=> (not res!228233) (not e!240293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397337 (= res!228233 (validMask!0 mask!1025))))

(declare-fun b!397338 () Bool)

(declare-fun res!228232 () Bool)

(assert (=> b!397338 (=> (not res!228232) (not e!240293))))

(assert (=> b!397338 (= res!228232 (or (= (select (arr!11302 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11302 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397339 () Bool)

(declare-fun res!228231 () Bool)

(assert (=> b!397339 (=> (not res!228231) (not e!240293))))

(assert (=> b!397339 (= res!228231 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6510))))

(declare-fun res!228234 () Bool)

(assert (=> start!38502 (=> (not res!228234) (not e!240293))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38502 (= res!228234 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11654 _keys!709))))))

(assert (=> start!38502 e!240293))

(assert (=> start!38502 true))

(declare-fun e!240292 () Bool)

(declare-fun array_inv!8274 (array!23709) Bool)

(assert (=> start!38502 (and (array_inv!8274 _values!549) e!240292)))

(declare-fun array_inv!8275 (array!23711) Bool)

(assert (=> start!38502 (array_inv!8275 _keys!709)))

(declare-fun b!397340 () Bool)

(declare-fun res!228230 () Bool)

(assert (=> b!397340 (=> (not res!228230) (not e!240293))))

(assert (=> b!397340 (= res!228230 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11654 _keys!709))))))

(declare-fun b!397341 () Bool)

(declare-fun res!228227 () Bool)

(assert (=> b!397341 (=> (not res!228227) (not e!240293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397341 (= res!228227 (validKeyInArray!0 k!794))))

(declare-fun b!397342 () Bool)

(declare-fun e!240290 () Bool)

(assert (=> b!397342 (= e!240290 tp_is_empty!9913)))

(declare-fun b!397343 () Bool)

(declare-fun res!228226 () Bool)

(assert (=> b!397343 (=> (not res!228226) (not e!240293))))

(declare-fun arrayContainsKey!0 (array!23711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397343 (= res!228226 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397344 () Bool)

(declare-fun res!228228 () Bool)

(assert (=> b!397344 (=> (not res!228228) (not e!240293))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!397344 (= res!228228 (and (= (size!11653 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11654 _keys!709) (size!11653 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397345 () Bool)

(assert (=> b!397345 (= e!240292 (and e!240290 mapRes!16491))))

(declare-fun condMapEmpty!16491 () Bool)

(declare-fun mapDefault!16491 () ValueCell!4613)

