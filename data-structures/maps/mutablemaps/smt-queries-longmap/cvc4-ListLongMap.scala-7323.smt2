; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93638 () Bool)

(assert start!93638)

(declare-fun b!1059148 () Bool)

(declare-fun res!707646 () Bool)

(declare-fun e!602806 () Bool)

(assert (=> b!1059148 (=> (not res!707646) (not e!602806))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38373 0))(
  ( (V!38374 (val!12515 Int)) )
))
(declare-datatypes ((ValueCell!11761 0))(
  ( (ValueCellFull!11761 (v!15125 V!38373)) (EmptyCell!11761) )
))
(declare-datatypes ((array!66864 0))(
  ( (array!66865 (arr!32140 (Array (_ BitVec 32) ValueCell!11761)) (size!32677 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66864)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!66866 0))(
  ( (array!66867 (arr!32141 (Array (_ BitVec 32) (_ BitVec 64))) (size!32678 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66866)

(assert (=> b!1059148 (= res!707646 (and (= (size!32677 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32678 _keys!1163) (size!32677 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059149 () Bool)

(declare-fun res!707645 () Bool)

(assert (=> b!1059149 (=> (not res!707645) (not e!602806))))

(assert (=> b!1059149 (= res!707645 (and (bvsle #b00000000000000000000000000000000 (size!32678 _keys!1163)) (bvslt (size!32678 _keys!1163) #b01111111111111111111111111111111)))))

(declare-fun b!1059150 () Bool)

(declare-fun e!602804 () Bool)

(declare-fun tp_is_empty!24929 () Bool)

(assert (=> b!1059150 (= e!602804 tp_is_empty!24929)))

(declare-fun mapIsEmpty!39052 () Bool)

(declare-fun mapRes!39052 () Bool)

(assert (=> mapIsEmpty!39052 mapRes!39052))

(declare-fun res!707644 () Bool)

(assert (=> start!93638 (=> (not res!707644) (not e!602806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93638 (= res!707644 (validMask!0 mask!1515))))

(assert (=> start!93638 e!602806))

(assert (=> start!93638 true))

(declare-fun e!602808 () Bool)

(declare-fun array_inv!24756 (array!66864) Bool)

(assert (=> start!93638 (and (array_inv!24756 _values!955) e!602808)))

(declare-fun array_inv!24757 (array!66866) Bool)

(assert (=> start!93638 (array_inv!24757 _keys!1163)))

(declare-fun b!1059147 () Bool)

(declare-datatypes ((List!22543 0))(
  ( (Nil!22540) (Cons!22539 (h!23748 (_ BitVec 64)) (t!31857 List!22543)) )
))
(declare-fun noDuplicate!1589 (List!22543) Bool)

(assert (=> b!1059147 (= e!602806 (not (noDuplicate!1589 Nil!22540)))))

(declare-fun b!1059151 () Bool)

(declare-fun res!707647 () Bool)

(assert (=> b!1059151 (=> (not res!707647) (not e!602806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66866 (_ BitVec 32)) Bool)

(assert (=> b!1059151 (= res!707647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059152 () Bool)

(declare-fun e!602807 () Bool)

(assert (=> b!1059152 (= e!602808 (and e!602807 mapRes!39052))))

(declare-fun condMapEmpty!39052 () Bool)

(declare-fun mapDefault!39052 () ValueCell!11761)

