; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39138 () Bool)

(assert start!39138)

(declare-fun b_free!9397 () Bool)

(declare-fun b_next!9397 () Bool)

(assert (=> start!39138 (= b_free!9397 (not b_next!9397))))

(declare-fun tp!33720 () Bool)

(declare-fun b_and!16801 () Bool)

(assert (=> start!39138 (= tp!33720 b_and!16801)))

(declare-fun b!411342 () Bool)

(declare-fun res!238727 () Bool)

(declare-fun e!246340 () Bool)

(assert (=> b!411342 (=> (not res!238727) (not e!246340))))

(declare-datatypes ((array!24943 0))(
  ( (array!24944 (arr!11918 (Array (_ BitVec 32) (_ BitVec 64))) (size!12270 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24943)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411342 (= res!238727 (or (= (select (arr!11918 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11918 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411343 () Bool)

(declare-fun res!238733 () Bool)

(assert (=> b!411343 (=> (not res!238733) (not e!246340))))

(assert (=> b!411343 (= res!238733 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12270 _keys!709))))))

(declare-fun b!411344 () Bool)

(declare-fun res!238724 () Bool)

(assert (=> b!411344 (=> (not res!238724) (not e!246340))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!411344 (= res!238724 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!411345 () Bool)

(declare-fun e!246338 () Bool)

(assert (=> b!411345 (= e!246340 e!246338)))

(declare-fun res!238728 () Bool)

(assert (=> b!411345 (=> (not res!238728) (not e!246338))))

(declare-fun lt!189262 () array!24943)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24943 (_ BitVec 32)) Bool)

(assert (=> b!411345 (= res!238728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189262 mask!1025))))

(assert (=> b!411345 (= lt!189262 (array!24944 (store (arr!11918 _keys!709) i!563 k!794) (size!12270 _keys!709)))))

(declare-fun b!411346 () Bool)

(declare-fun res!238729 () Bool)

(assert (=> b!411346 (=> (not res!238729) (not e!246340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411346 (= res!238729 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!17445 () Bool)

(declare-fun mapRes!17445 () Bool)

(declare-fun tp!33719 () Bool)

(declare-fun e!246342 () Bool)

(assert (=> mapNonEmpty!17445 (= mapRes!17445 (and tp!33719 e!246342))))

(declare-datatypes ((V!15171 0))(
  ( (V!15172 (val!5319 Int)) )
))
(declare-datatypes ((ValueCell!4931 0))(
  ( (ValueCellFull!4931 (v!7562 V!15171)) (EmptyCell!4931) )
))
(declare-fun mapRest!17445 () (Array (_ BitVec 32) ValueCell!4931))

(declare-datatypes ((array!24945 0))(
  ( (array!24946 (arr!11919 (Array (_ BitVec 32) ValueCell!4931)) (size!12271 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24945)

(declare-fun mapKey!17445 () (_ BitVec 32))

(declare-fun mapValue!17445 () ValueCell!4931)

(assert (=> mapNonEmpty!17445 (= (arr!11919 _values!549) (store mapRest!17445 mapKey!17445 mapValue!17445))))

(declare-fun b!411347 () Bool)

(declare-fun res!238732 () Bool)

(assert (=> b!411347 (=> (not res!238732) (not e!246340))))

(assert (=> b!411347 (= res!238732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!238731 () Bool)

(assert (=> start!39138 (=> (not res!238731) (not e!246340))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39138 (= res!238731 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12270 _keys!709))))))

(assert (=> start!39138 e!246340))

(declare-fun tp_is_empty!10549 () Bool)

(assert (=> start!39138 tp_is_empty!10549))

(assert (=> start!39138 tp!33720))

(assert (=> start!39138 true))

(declare-fun e!246339 () Bool)

(declare-fun array_inv!8696 (array!24945) Bool)

(assert (=> start!39138 (and (array_inv!8696 _values!549) e!246339)))

(declare-fun array_inv!8697 (array!24943) Bool)

(assert (=> start!39138 (array_inv!8697 _keys!709)))

(declare-fun b!411348 () Bool)

(assert (=> b!411348 (= e!246342 tp_is_empty!10549)))

(declare-fun b!411349 () Bool)

(declare-fun res!238723 () Bool)

(assert (=> b!411349 (=> (not res!238723) (not e!246338))))

(assert (=> b!411349 (= res!238723 (bvsle from!863 i!563))))

(declare-fun b!411350 () Bool)

(declare-fun e!246343 () Bool)

(assert (=> b!411350 (= e!246339 (and e!246343 mapRes!17445))))

(declare-fun condMapEmpty!17445 () Bool)

(declare-fun mapDefault!17445 () ValueCell!4931)

