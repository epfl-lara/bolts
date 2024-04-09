; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38808 () Bool)

(assert start!38808)

(declare-fun res!233470 () Bool)

(declare-fun e!243371 () Bool)

(assert (=> start!38808 (=> (not res!233470) (not e!243371))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24301 0))(
  ( (array!24302 (arr!11597 (Array (_ BitVec 32) (_ BitVec 64))) (size!11949 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24301)

(assert (=> start!38808 (= res!233470 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11949 _keys!709))))))

(assert (=> start!38808 e!243371))

(assert (=> start!38808 true))

(declare-datatypes ((V!14731 0))(
  ( (V!14732 (val!5154 Int)) )
))
(declare-datatypes ((ValueCell!4766 0))(
  ( (ValueCellFull!4766 (v!7397 V!14731)) (EmptyCell!4766) )
))
(declare-datatypes ((array!24303 0))(
  ( (array!24304 (arr!11598 (Array (_ BitVec 32) ValueCell!4766)) (size!11950 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24303)

(declare-fun e!243369 () Bool)

(declare-fun array_inv!8472 (array!24303) Bool)

(assert (=> start!38808 (and (array_inv!8472 _values!549) e!243369)))

(declare-fun array_inv!8473 (array!24301) Bool)

(assert (=> start!38808 (array_inv!8473 _keys!709)))

(declare-fun b!404597 () Bool)

(declare-fun e!243373 () Bool)

(assert (=> b!404597 (= e!243373 false)))

(declare-fun lt!188198 () Bool)

(declare-fun lt!188199 () array!24301)

(declare-datatypes ((List!6728 0))(
  ( (Nil!6725) (Cons!6724 (h!7580 (_ BitVec 64)) (t!11910 List!6728)) )
))
(declare-fun arrayNoDuplicates!0 (array!24301 (_ BitVec 32) List!6728) Bool)

(assert (=> b!404597 (= lt!188198 (arrayNoDuplicates!0 lt!188199 #b00000000000000000000000000000000 Nil!6725))))

(declare-fun b!404598 () Bool)

(declare-fun res!233463 () Bool)

(assert (=> b!404598 (=> (not res!233463) (not e!243371))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24301 (_ BitVec 32)) Bool)

(assert (=> b!404598 (= res!233463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404599 () Bool)

(declare-fun e!243370 () Bool)

(declare-fun mapRes!16950 () Bool)

(assert (=> b!404599 (= e!243369 (and e!243370 mapRes!16950))))

(declare-fun condMapEmpty!16950 () Bool)

(declare-fun mapDefault!16950 () ValueCell!4766)

