; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38452 () Bool)

(assert start!38452)

(declare-fun b!396359 () Bool)

(declare-fun res!227478 () Bool)

(declare-fun e!239844 () Bool)

(assert (=> b!396359 (=> (not res!227478) (not e!239844))))

(declare-datatypes ((array!23615 0))(
  ( (array!23616 (arr!11254 (Array (_ BitVec 32) (_ BitVec 64))) (size!11606 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23615)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14255 0))(
  ( (V!14256 (val!4976 Int)) )
))
(declare-datatypes ((ValueCell!4588 0))(
  ( (ValueCellFull!4588 (v!7219 V!14255)) (EmptyCell!4588) )
))
(declare-datatypes ((array!23617 0))(
  ( (array!23618 (arr!11255 (Array (_ BitVec 32) ValueCell!4588)) (size!11607 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23617)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!396359 (= res!227478 (and (= (size!11607 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11606 _keys!709) (size!11607 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396360 () Bool)

(declare-fun res!227476 () Bool)

(assert (=> b!396360 (=> (not res!227476) (not e!239844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23615 (_ BitVec 32)) Bool)

(assert (=> b!396360 (= res!227476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396361 () Bool)

(declare-fun res!227483 () Bool)

(assert (=> b!396361 (=> (not res!227483) (not e!239844))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396361 (= res!227483 (validKeyInArray!0 k!794))))

(declare-fun b!396362 () Bool)

(declare-fun res!227477 () Bool)

(assert (=> b!396362 (=> (not res!227477) (not e!239844))))

(declare-datatypes ((List!6494 0))(
  ( (Nil!6491) (Cons!6490 (h!7346 (_ BitVec 64)) (t!11676 List!6494)) )
))
(declare-fun arrayNoDuplicates!0 (array!23615 (_ BitVec 32) List!6494) Bool)

(assert (=> b!396362 (= res!227477 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6491))))

(declare-fun res!227479 () Bool)

(assert (=> start!38452 (=> (not res!227479) (not e!239844))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38452 (= res!227479 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11606 _keys!709))))))

(assert (=> start!38452 e!239844))

(assert (=> start!38452 true))

(declare-fun e!239841 () Bool)

(declare-fun array_inv!8240 (array!23617) Bool)

(assert (=> start!38452 (and (array_inv!8240 _values!549) e!239841)))

(declare-fun array_inv!8241 (array!23615) Bool)

(assert (=> start!38452 (array_inv!8241 _keys!709)))

(declare-fun b!396363 () Bool)

(declare-fun res!227484 () Bool)

(assert (=> b!396363 (=> (not res!227484) (not e!239844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396363 (= res!227484 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16416 () Bool)

(declare-fun mapRes!16416 () Bool)

(assert (=> mapIsEmpty!16416 mapRes!16416))

(declare-fun b!396364 () Bool)

(declare-fun res!227480 () Bool)

(assert (=> b!396364 (=> (not res!227480) (not e!239844))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396364 (= res!227480 (or (= (select (arr!11254 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11254 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396365 () Bool)

(declare-fun res!227482 () Bool)

(assert (=> b!396365 (=> (not res!227482) (not e!239844))))

(declare-fun arrayContainsKey!0 (array!23615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396365 (= res!227482 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!396366 () Bool)

(declare-fun e!239842 () Bool)

(declare-fun tp_is_empty!9863 () Bool)

(assert (=> b!396366 (= e!239842 tp_is_empty!9863)))

(declare-fun b!396367 () Bool)

(declare-fun e!239840 () Bool)

(assert (=> b!396367 (= e!239844 e!239840)))

(declare-fun res!227475 () Bool)

(assert (=> b!396367 (=> (not res!227475) (not e!239840))))

(declare-fun lt!187131 () array!23615)

(assert (=> b!396367 (= res!227475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187131 mask!1025))))

(assert (=> b!396367 (= lt!187131 (array!23616 (store (arr!11254 _keys!709) i!563 k!794) (size!11606 _keys!709)))))

(declare-fun b!396368 () Bool)

(assert (=> b!396368 (= e!239840 false)))

(declare-fun lt!187130 () Bool)

(assert (=> b!396368 (= lt!187130 (arrayNoDuplicates!0 lt!187131 #b00000000000000000000000000000000 Nil!6491))))

(declare-fun b!396369 () Bool)

(declare-fun e!239843 () Bool)

(assert (=> b!396369 (= e!239843 tp_is_empty!9863)))

(declare-fun mapNonEmpty!16416 () Bool)

(declare-fun tp!32211 () Bool)

(assert (=> mapNonEmpty!16416 (= mapRes!16416 (and tp!32211 e!239842))))

(declare-fun mapRest!16416 () (Array (_ BitVec 32) ValueCell!4588))

(declare-fun mapKey!16416 () (_ BitVec 32))

(declare-fun mapValue!16416 () ValueCell!4588)

(assert (=> mapNonEmpty!16416 (= (arr!11255 _values!549) (store mapRest!16416 mapKey!16416 mapValue!16416))))

(declare-fun b!396370 () Bool)

(assert (=> b!396370 (= e!239841 (and e!239843 mapRes!16416))))

(declare-fun condMapEmpty!16416 () Bool)

(declare-fun mapDefault!16416 () ValueCell!4588)

