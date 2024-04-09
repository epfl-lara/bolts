; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39226 () Bool)

(assert start!39226)

(declare-fun b_free!9485 () Bool)

(declare-fun b_next!9485 () Bool)

(assert (=> start!39226 (= b_free!9485 (not b_next!9485))))

(declare-fun tp!33983 () Bool)

(declare-fun b_and!16889 () Bool)

(assert (=> start!39226 (= tp!33983 b_and!16889)))

(declare-fun b!413454 () Bool)

(declare-fun res!240352 () Bool)

(declare-fun e!247218 () Bool)

(assert (=> b!413454 (=> (not res!240352) (not e!247218))))

(declare-datatypes ((array!25113 0))(
  ( (array!25114 (arr!12003 (Array (_ BitVec 32) (_ BitVec 64))) (size!12355 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25113)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25113 (_ BitVec 32)) Bool)

(assert (=> b!413454 (= res!240352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!413455 () Bool)

(declare-fun res!240358 () Bool)

(declare-fun e!247224 () Bool)

(assert (=> b!413455 (=> (not res!240358) (not e!247224))))

(declare-fun lt!189749 () array!25113)

(declare-datatypes ((List!6955 0))(
  ( (Nil!6952) (Cons!6951 (h!7807 (_ BitVec 64)) (t!12137 List!6955)) )
))
(declare-fun arrayNoDuplicates!0 (array!25113 (_ BitVec 32) List!6955) Bool)

(assert (=> b!413455 (= res!240358 (arrayNoDuplicates!0 lt!189749 #b00000000000000000000000000000000 Nil!6952))))

(declare-fun b!413456 () Bool)

(declare-fun res!240355 () Bool)

(assert (=> b!413456 (=> (not res!240355) (not e!247218))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413456 (= res!240355 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!413457 () Bool)

(declare-fun e!247222 () Bool)

(declare-datatypes ((V!15287 0))(
  ( (V!15288 (val!5363 Int)) )
))
(declare-datatypes ((tuple2!6894 0))(
  ( (tuple2!6895 (_1!3457 (_ BitVec 64)) (_2!3457 V!15287)) )
))
(declare-datatypes ((List!6956 0))(
  ( (Nil!6953) (Cons!6952 (h!7808 tuple2!6894) (t!12138 List!6956)) )
))
(declare-datatypes ((ListLongMap!5821 0))(
  ( (ListLongMap!5822 (toList!2926 List!6956)) )
))
(declare-fun call!28631 () ListLongMap!5821)

(declare-fun call!28630 () ListLongMap!5821)

(assert (=> b!413457 (= e!247222 (= call!28631 call!28630))))

(declare-fun b!413458 () Bool)

(declare-fun e!247220 () Bool)

(assert (=> b!413458 (= e!247220 (not true))))

(assert (=> b!413458 e!247222))

(declare-fun c!54866 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413458 (= c!54866 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15287)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4975 0))(
  ( (ValueCellFull!4975 (v!7606 V!15287)) (EmptyCell!4975) )
))
(declare-datatypes ((array!25115 0))(
  ( (array!25116 (arr!12004 (Array (_ BitVec 32) ValueCell!4975)) (size!12356 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25115)

(declare-fun zeroValue!515 () V!15287)

(declare-datatypes ((Unit!12193 0))(
  ( (Unit!12194) )
))
(declare-fun lt!189747 () Unit!12193)

(declare-fun v!412 () V!15287)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!359 (array!25113 array!25115 (_ BitVec 32) (_ BitVec 32) V!15287 V!15287 (_ BitVec 32) (_ BitVec 64) V!15287 (_ BitVec 32) Int) Unit!12193)

(assert (=> b!413458 (= lt!189747 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!359 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413459 () Bool)

(declare-fun res!240362 () Bool)

(assert (=> b!413459 (=> (not res!240362) (not e!247218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413459 (= res!240362 (validMask!0 mask!1025))))

(declare-fun b!413460 () Bool)

(declare-fun e!247223 () Bool)

(declare-fun e!247221 () Bool)

(declare-fun mapRes!17577 () Bool)

(assert (=> b!413460 (= e!247223 (and e!247221 mapRes!17577))))

(declare-fun condMapEmpty!17577 () Bool)

(declare-fun mapDefault!17577 () ValueCell!4975)

