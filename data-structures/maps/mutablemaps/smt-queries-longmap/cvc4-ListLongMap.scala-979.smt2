; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21188 () Bool)

(assert start!21188)

(declare-fun b_free!5627 () Bool)

(declare-fun b_next!5627 () Bool)

(assert (=> start!21188 (= b_free!5627 (not b_next!5627))))

(declare-fun tp!19952 () Bool)

(declare-fun b_and!12511 () Bool)

(assert (=> start!21188 (= tp!19952 b_and!12511)))

(declare-fun b!213216 () Bool)

(declare-fun e!138698 () Bool)

(declare-fun e!138693 () Bool)

(assert (=> b!213216 (= e!138698 e!138693)))

(declare-fun res!104341 () Bool)

(assert (=> b!213216 (=> res!104341 e!138693)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!213216 (= res!104341 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6965 0))(
  ( (V!6966 (val!2789 Int)) )
))
(declare-datatypes ((tuple2!4220 0))(
  ( (tuple2!4221 (_1!2120 (_ BitVec 64)) (_2!2120 V!6965)) )
))
(declare-datatypes ((List!3130 0))(
  ( (Nil!3127) (Cons!3126 (h!3768 tuple2!4220) (t!8089 List!3130)) )
))
(declare-datatypes ((ListLongMap!3147 0))(
  ( (ListLongMap!3148 (toList!1589 List!3130)) )
))
(declare-fun lt!110169 () ListLongMap!3147)

(declare-fun lt!110163 () ListLongMap!3147)

(assert (=> b!213216 (= lt!110169 lt!110163)))

(declare-fun lt!110160 () ListLongMap!3147)

(declare-fun lt!110165 () tuple2!4220)

(declare-fun +!582 (ListLongMap!3147 tuple2!4220) ListLongMap!3147)

(assert (=> b!213216 (= lt!110163 (+!582 lt!110160 lt!110165))))

(declare-fun lt!110171 () ListLongMap!3147)

(declare-fun lt!110161 () ListLongMap!3147)

(assert (=> b!213216 (= lt!110171 lt!110161)))

(declare-fun lt!110167 () ListLongMap!3147)

(assert (=> b!213216 (= lt!110161 (+!582 lt!110167 lt!110165))))

(declare-fun lt!110168 () ListLongMap!3147)

(assert (=> b!213216 (= lt!110171 (+!582 lt!110168 lt!110165))))

(declare-fun minValue!615 () V!6965)

(assert (=> b!213216 (= lt!110165 (tuple2!4221 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!213217 () Bool)

(declare-fun e!138697 () Bool)

(declare-fun tp_is_empty!5489 () Bool)

(assert (=> b!213217 (= e!138697 tp_is_empty!5489)))

(declare-fun b!213218 () Bool)

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2401 0))(
  ( (ValueCellFull!2401 (v!4795 V!6965)) (EmptyCell!2401) )
))
(declare-datatypes ((array!10182 0))(
  ( (array!10183 (arr!4831 (Array (_ BitVec 32) ValueCell!2401)) (size!5156 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10182)

(assert (=> b!213218 (= e!138693 (bvslt i!601 (size!5156 _values!649)))))

(declare-fun lt!110170 () tuple2!4220)

(assert (=> b!213218 (= lt!110161 (+!582 lt!110163 lt!110170))))

(declare-datatypes ((Unit!6463 0))(
  ( (Unit!6464) )
))
(declare-fun lt!110162 () Unit!6463)

(declare-fun v!520 () V!6965)

(declare-fun addCommutativeForDiffKeys!204 (ListLongMap!3147 (_ BitVec 64) V!6965 (_ BitVec 64) V!6965) Unit!6463)

(assert (=> b!213218 (= lt!110162 (addCommutativeForDiffKeys!204 lt!110160 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!213219 () Bool)

(declare-fun res!104348 () Bool)

(declare-fun e!138695 () Bool)

(assert (=> b!213219 (=> (not res!104348) (not e!138695))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213219 (= res!104348 (validKeyInArray!0 k!843))))

(declare-fun b!213220 () Bool)

(declare-fun res!104342 () Bool)

(assert (=> b!213220 (=> (not res!104342) (not e!138695))))

(declare-datatypes ((array!10184 0))(
  ( (array!10185 (arr!4832 (Array (_ BitVec 32) (_ BitVec 64))) (size!5157 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10184)

(assert (=> b!213220 (= res!104342 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5157 _keys!825))))))

(declare-fun mapIsEmpty!9332 () Bool)

(declare-fun mapRes!9332 () Bool)

(assert (=> mapIsEmpty!9332 mapRes!9332))

(declare-fun b!213221 () Bool)

(declare-fun res!104343 () Bool)

(assert (=> b!213221 (=> (not res!104343) (not e!138695))))

(declare-datatypes ((List!3131 0))(
  ( (Nil!3128) (Cons!3127 (h!3769 (_ BitVec 64)) (t!8090 List!3131)) )
))
(declare-fun arrayNoDuplicates!0 (array!10184 (_ BitVec 32) List!3131) Bool)

(assert (=> b!213221 (= res!104343 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3128))))

(declare-fun b!213222 () Bool)

(declare-fun e!138692 () Bool)

(assert (=> b!213222 (= e!138692 (and e!138697 mapRes!9332))))

(declare-fun condMapEmpty!9332 () Bool)

(declare-fun mapDefault!9332 () ValueCell!2401)

