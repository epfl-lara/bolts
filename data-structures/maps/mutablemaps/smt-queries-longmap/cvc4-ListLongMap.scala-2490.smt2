; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38770 () Bool)

(assert start!38770)

(declare-fun b!403856 () Bool)

(declare-fun res!232901 () Bool)

(declare-fun e!243030 () Bool)

(assert (=> b!403856 (=> (not res!232901) (not e!243030))))

(declare-datatypes ((array!24231 0))(
  ( (array!24232 (arr!11562 (Array (_ BitVec 32) (_ BitVec 64))) (size!11914 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24231)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24231 (_ BitVec 32)) Bool)

(assert (=> b!403856 (= res!232901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403857 () Bool)

(declare-fun res!232894 () Bool)

(assert (=> b!403857 (=> (not res!232894) (not e!243030))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403857 (= res!232894 (validKeyInArray!0 k!794))))

(declare-fun b!403858 () Bool)

(declare-fun res!232902 () Bool)

(assert (=> b!403858 (=> (not res!232902) (not e!243030))))

(declare-datatypes ((List!6713 0))(
  ( (Nil!6710) (Cons!6709 (h!7565 (_ BitVec 64)) (t!11895 List!6713)) )
))
(declare-fun arrayNoDuplicates!0 (array!24231 (_ BitVec 32) List!6713) Bool)

(assert (=> b!403858 (= res!232902 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6710))))

(declare-fun b!403859 () Bool)

(declare-fun e!243031 () Bool)

(declare-fun tp_is_empty!10181 () Bool)

(assert (=> b!403859 (= e!243031 tp_is_empty!10181)))

(declare-fun b!403860 () Bool)

(declare-fun res!232899 () Bool)

(assert (=> b!403860 (=> (not res!232899) (not e!243030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403860 (= res!232899 (validMask!0 mask!1025))))

(declare-fun b!403861 () Bool)

(declare-fun res!232898 () Bool)

(assert (=> b!403861 (=> (not res!232898) (not e!243030))))

(declare-fun arrayContainsKey!0 (array!24231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403861 (= res!232898 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!403862 () Bool)

(declare-fun res!232897 () Bool)

(assert (=> b!403862 (=> (not res!232897) (not e!243030))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!403862 (= res!232897 (or (= (select (arr!11562 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11562 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!403863 () Bool)

(declare-fun e!243028 () Bool)

(assert (=> b!403863 (= e!243030 e!243028)))

(declare-fun res!232895 () Bool)

(assert (=> b!403863 (=> (not res!232895) (not e!243028))))

(declare-fun lt!188084 () array!24231)

(assert (=> b!403863 (= res!232895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188084 mask!1025))))

(assert (=> b!403863 (= lt!188084 (array!24232 (store (arr!11562 _keys!709) i!563 k!794) (size!11914 _keys!709)))))

(declare-fun b!403864 () Bool)

(declare-fun res!232900 () Bool)

(assert (=> b!403864 (=> (not res!232900) (not e!243030))))

(assert (=> b!403864 (= res!232900 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11914 _keys!709))))))

(declare-fun res!232896 () Bool)

(assert (=> start!38770 (=> (not res!232896) (not e!243030))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38770 (= res!232896 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11914 _keys!709))))))

(assert (=> start!38770 e!243030))

(assert (=> start!38770 true))

(declare-datatypes ((V!14679 0))(
  ( (V!14680 (val!5135 Int)) )
))
(declare-datatypes ((ValueCell!4747 0))(
  ( (ValueCellFull!4747 (v!7378 V!14679)) (EmptyCell!4747) )
))
(declare-datatypes ((array!24233 0))(
  ( (array!24234 (arr!11563 (Array (_ BitVec 32) ValueCell!4747)) (size!11915 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24233)

(declare-fun e!243029 () Bool)

(declare-fun array_inv!8448 (array!24233) Bool)

(assert (=> start!38770 (and (array_inv!8448 _values!549) e!243029)))

(declare-fun array_inv!8449 (array!24231) Bool)

(assert (=> start!38770 (array_inv!8449 _keys!709)))

(declare-fun b!403865 () Bool)

(declare-fun e!243027 () Bool)

(assert (=> b!403865 (= e!243027 tp_is_empty!10181)))

(declare-fun b!403866 () Bool)

(declare-fun res!232893 () Bool)

(assert (=> b!403866 (=> (not res!232893) (not e!243030))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!403866 (= res!232893 (and (= (size!11915 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11914 _keys!709) (size!11915 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16893 () Bool)

(declare-fun mapRes!16893 () Bool)

(declare-fun tp!33012 () Bool)

(assert (=> mapNonEmpty!16893 (= mapRes!16893 (and tp!33012 e!243027))))

(declare-fun mapValue!16893 () ValueCell!4747)

(declare-fun mapKey!16893 () (_ BitVec 32))

(declare-fun mapRest!16893 () (Array (_ BitVec 32) ValueCell!4747))

(assert (=> mapNonEmpty!16893 (= (arr!11563 _values!549) (store mapRest!16893 mapKey!16893 mapValue!16893))))

(declare-fun b!403867 () Bool)

(assert (=> b!403867 (= e!243029 (and e!243031 mapRes!16893))))

(declare-fun condMapEmpty!16893 () Bool)

(declare-fun mapDefault!16893 () ValueCell!4747)

