; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38490 () Bool)

(assert start!38490)

(declare-fun mapNonEmpty!16473 () Bool)

(declare-fun mapRes!16473 () Bool)

(declare-fun tp!32268 () Bool)

(declare-fun e!240186 () Bool)

(assert (=> mapNonEmpty!16473 (= mapRes!16473 (and tp!32268 e!240186))))

(declare-fun mapKey!16473 () (_ BitVec 32))

(declare-datatypes ((V!14307 0))(
  ( (V!14308 (val!4995 Int)) )
))
(declare-datatypes ((ValueCell!4607 0))(
  ( (ValueCellFull!4607 (v!7238 V!14307)) (EmptyCell!4607) )
))
(declare-fun mapValue!16473 () ValueCell!4607)

(declare-datatypes ((array!23685 0))(
  ( (array!23686 (arr!11289 (Array (_ BitVec 32) ValueCell!4607)) (size!11641 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23685)

(declare-fun mapRest!16473 () (Array (_ BitVec 32) ValueCell!4607))

(assert (=> mapNonEmpty!16473 (= (arr!11289 _values!549) (store mapRest!16473 mapKey!16473 mapValue!16473))))

(declare-fun b!397100 () Bool)

(declare-fun res!228045 () Bool)

(declare-fun e!240184 () Bool)

(assert (=> b!397100 (=> (not res!228045) (not e!240184))))

(declare-datatypes ((array!23687 0))(
  ( (array!23688 (arr!11290 (Array (_ BitVec 32) (_ BitVec 64))) (size!11642 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23687)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397100 (= res!228045 (or (= (select (arr!11290 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11290 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397101 () Bool)

(declare-fun tp_is_empty!9901 () Bool)

(assert (=> b!397101 (= e!240186 tp_is_empty!9901)))

(declare-fun res!228054 () Bool)

(assert (=> start!38490 (=> (not res!228054) (not e!240184))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38490 (= res!228054 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11642 _keys!709))))))

(assert (=> start!38490 e!240184))

(assert (=> start!38490 true))

(declare-fun e!240183 () Bool)

(declare-fun array_inv!8264 (array!23685) Bool)

(assert (=> start!38490 (and (array_inv!8264 _values!549) e!240183)))

(declare-fun array_inv!8265 (array!23687) Bool)

(assert (=> start!38490 (array_inv!8265 _keys!709)))

(declare-fun b!397102 () Bool)

(declare-fun res!228053 () Bool)

(assert (=> b!397102 (=> (not res!228053) (not e!240184))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23687 (_ BitVec 32)) Bool)

(assert (=> b!397102 (= res!228053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397103 () Bool)

(declare-fun res!228049 () Bool)

(assert (=> b!397103 (=> (not res!228049) (not e!240184))))

(declare-datatypes ((List!6507 0))(
  ( (Nil!6504) (Cons!6503 (h!7359 (_ BitVec 64)) (t!11689 List!6507)) )
))
(declare-fun arrayNoDuplicates!0 (array!23687 (_ BitVec 32) List!6507) Bool)

(assert (=> b!397103 (= res!228049 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6504))))

(declare-fun b!397104 () Bool)

(declare-fun res!228046 () Bool)

(assert (=> b!397104 (=> (not res!228046) (not e!240184))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397104 (= res!228046 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397105 () Bool)

(declare-fun e!240187 () Bool)

(assert (=> b!397105 (= e!240187 false)))

(declare-fun lt!187244 () Bool)

(declare-fun lt!187245 () array!23687)

(assert (=> b!397105 (= lt!187244 (arrayNoDuplicates!0 lt!187245 #b00000000000000000000000000000000 Nil!6504))))

(declare-fun b!397106 () Bool)

(declare-fun res!228052 () Bool)

(assert (=> b!397106 (=> (not res!228052) (not e!240184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397106 (= res!228052 (validMask!0 mask!1025))))

(declare-fun b!397107 () Bool)

(assert (=> b!397107 (= e!240184 e!240187)))

(declare-fun res!228051 () Bool)

(assert (=> b!397107 (=> (not res!228051) (not e!240187))))

(assert (=> b!397107 (= res!228051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187245 mask!1025))))

(assert (=> b!397107 (= lt!187245 (array!23688 (store (arr!11290 _keys!709) i!563 k!794) (size!11642 _keys!709)))))

(declare-fun b!397108 () Bool)

(declare-fun e!240182 () Bool)

(assert (=> b!397108 (= e!240182 tp_is_empty!9901)))

(declare-fun mapIsEmpty!16473 () Bool)

(assert (=> mapIsEmpty!16473 mapRes!16473))

(declare-fun b!397109 () Bool)

(declare-fun res!228048 () Bool)

(assert (=> b!397109 (=> (not res!228048) (not e!240184))))

(assert (=> b!397109 (= res!228048 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11642 _keys!709))))))

(declare-fun b!397110 () Bool)

(assert (=> b!397110 (= e!240183 (and e!240182 mapRes!16473))))

(declare-fun condMapEmpty!16473 () Bool)

(declare-fun mapDefault!16473 () ValueCell!4607)

