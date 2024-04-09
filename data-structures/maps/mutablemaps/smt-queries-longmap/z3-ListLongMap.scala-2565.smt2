; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39218 () Bool)

(assert start!39218)

(declare-fun b_free!9477 () Bool)

(declare-fun b_next!9477 () Bool)

(assert (=> start!39218 (= b_free!9477 (not b_next!9477))))

(declare-fun tp!33959 () Bool)

(declare-fun b_and!16881 () Bool)

(assert (=> start!39218 (= tp!33959 b_and!16881)))

(declare-fun b!413238 () Bool)

(declare-fun e!247128 () Bool)

(declare-fun tp_is_empty!10629 () Bool)

(assert (=> b!413238 (= e!247128 tp_is_empty!10629)))

(declare-fun mapNonEmpty!17565 () Bool)

(declare-fun mapRes!17565 () Bool)

(declare-fun tp!33960 () Bool)

(declare-fun e!247125 () Bool)

(assert (=> mapNonEmpty!17565 (= mapRes!17565 (and tp!33960 e!247125))))

(declare-fun mapKey!17565 () (_ BitVec 32))

(declare-datatypes ((V!15277 0))(
  ( (V!15278 (val!5359 Int)) )
))
(declare-datatypes ((ValueCell!4971 0))(
  ( (ValueCellFull!4971 (v!7602 V!15277)) (EmptyCell!4971) )
))
(declare-datatypes ((array!25097 0))(
  ( (array!25098 (arr!11995 (Array (_ BitVec 32) ValueCell!4971)) (size!12347 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25097)

(declare-fun mapRest!17565 () (Array (_ BitVec 32) ValueCell!4971))

(declare-fun mapValue!17565 () ValueCell!4971)

(assert (=> mapNonEmpty!17565 (= (arr!11995 _values!549) (store mapRest!17565 mapKey!17565 mapValue!17565))))

(declare-fun minValue!515 () V!15277)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6886 0))(
  ( (tuple2!6887 (_1!3453 (_ BitVec 64)) (_2!3453 V!15277)) )
))
(declare-datatypes ((List!6947 0))(
  ( (Nil!6944) (Cons!6943 (h!7799 tuple2!6886) (t!12129 List!6947)) )
))
(declare-datatypes ((ListLongMap!5813 0))(
  ( (ListLongMap!5814 (toList!2922 List!6947)) )
))
(declare-fun call!28606 () ListLongMap!5813)

(declare-datatypes ((array!25099 0))(
  ( (array!25100 (arr!11996 (Array (_ BitVec 32) (_ BitVec 64))) (size!12348 (_ BitVec 32))) )
))
(declare-fun lt!189689 () array!25099)

(declare-fun c!54854 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25099)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!189687 () array!25097)

(declare-fun zeroValue!515 () V!15277)

(declare-fun bm!28603 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1131 (array!25099 array!25097 (_ BitVec 32) (_ BitVec 32) V!15277 V!15277 (_ BitVec 32) Int) ListLongMap!5813)

(assert (=> bm!28603 (= call!28606 (getCurrentListMapNoExtraKeys!1131 (ite c!54854 lt!189689 _keys!709) (ite c!54854 lt!189687 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413240 () Bool)

(declare-fun res!240198 () Bool)

(declare-fun e!247124 () Bool)

(assert (=> b!413240 (=> (not res!240198) (not e!247124))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413240 (= res!240198 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12348 _keys!709))))))

(declare-fun b!413241 () Bool)

(assert (=> b!413241 (= e!247125 tp_is_empty!10629)))

(declare-fun call!28607 () ListLongMap!5813)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!15277)

(declare-fun e!247123 () Bool)

(declare-fun b!413242 () Bool)

(declare-fun +!1145 (ListLongMap!5813 tuple2!6886) ListLongMap!5813)

(assert (=> b!413242 (= e!247123 (= call!28606 (+!1145 call!28607 (tuple2!6887 k0!794 v!412))))))

(declare-fun b!413243 () Bool)

(declare-fun res!240202 () Bool)

(assert (=> b!413243 (=> (not res!240202) (not e!247124))))

(assert (=> b!413243 (= res!240202 (or (= (select (arr!11996 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11996 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413244 () Bool)

(declare-fun res!240204 () Bool)

(declare-fun e!247126 () Bool)

(assert (=> b!413244 (=> (not res!240204) (not e!247126))))

(assert (=> b!413244 (= res!240204 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!17565 () Bool)

(assert (=> mapIsEmpty!17565 mapRes!17565))

(declare-fun b!413245 () Bool)

(declare-fun res!240203 () Bool)

(assert (=> b!413245 (=> (not res!240203) (not e!247124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413245 (= res!240203 (validMask!0 mask!1025))))

(declare-fun b!413246 () Bool)

(declare-fun e!247129 () Bool)

(assert (=> b!413246 (= e!247126 e!247129)))

(declare-fun res!240200 () Bool)

(assert (=> b!413246 (=> (not res!240200) (not e!247129))))

(assert (=> b!413246 (= res!240200 (= from!863 i!563))))

(declare-fun lt!189688 () ListLongMap!5813)

(assert (=> b!413246 (= lt!189688 (getCurrentListMapNoExtraKeys!1131 lt!189689 lt!189687 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!413246 (= lt!189687 (array!25098 (store (arr!11995 _values!549) i!563 (ValueCellFull!4971 v!412)) (size!12347 _values!549)))))

(declare-fun lt!189690 () ListLongMap!5813)

(assert (=> b!413246 (= lt!189690 (getCurrentListMapNoExtraKeys!1131 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!413247 () Bool)

(assert (=> b!413247 (= e!247129 (not true))))

(assert (=> b!413247 e!247123))

(assert (=> b!413247 (= c!54854 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12187 0))(
  ( (Unit!12188) )
))
(declare-fun lt!189686 () Unit!12187)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!356 (array!25099 array!25097 (_ BitVec 32) (_ BitVec 32) V!15277 V!15277 (_ BitVec 32) (_ BitVec 64) V!15277 (_ BitVec 32) Int) Unit!12187)

(assert (=> b!413247 (= lt!189686 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!356 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413248 () Bool)

(declare-fun res!240207 () Bool)

(assert (=> b!413248 (=> (not res!240207) (not e!247124))))

(assert (=> b!413248 (= res!240207 (and (= (size!12347 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12348 _keys!709) (size!12347 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!28604 () Bool)

(assert (=> bm!28604 (= call!28607 (getCurrentListMapNoExtraKeys!1131 (ite c!54854 _keys!709 lt!189689) (ite c!54854 _values!549 lt!189687) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413249 () Bool)

(assert (=> b!413249 (= e!247123 (= call!28607 call!28606))))

(declare-fun res!240206 () Bool)

(assert (=> start!39218 (=> (not res!240206) (not e!247124))))

(assert (=> start!39218 (= res!240206 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12348 _keys!709))))))

(assert (=> start!39218 e!247124))

(assert (=> start!39218 tp_is_empty!10629))

(assert (=> start!39218 tp!33959))

(assert (=> start!39218 true))

(declare-fun e!247127 () Bool)

(declare-fun array_inv!8748 (array!25097) Bool)

(assert (=> start!39218 (and (array_inv!8748 _values!549) e!247127)))

(declare-fun array_inv!8749 (array!25099) Bool)

(assert (=> start!39218 (array_inv!8749 _keys!709)))

(declare-fun b!413239 () Bool)

(declare-fun res!240197 () Bool)

(assert (=> b!413239 (=> (not res!240197) (not e!247124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413239 (= res!240197 (validKeyInArray!0 k0!794))))

(declare-fun b!413250 () Bool)

(declare-fun res!240205 () Bool)

(assert (=> b!413250 (=> (not res!240205) (not e!247124))))

(declare-datatypes ((List!6948 0))(
  ( (Nil!6945) (Cons!6944 (h!7800 (_ BitVec 64)) (t!12130 List!6948)) )
))
(declare-fun arrayNoDuplicates!0 (array!25099 (_ BitVec 32) List!6948) Bool)

(assert (=> b!413250 (= res!240205 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6945))))

(declare-fun b!413251 () Bool)

(declare-fun res!240199 () Bool)

(assert (=> b!413251 (=> (not res!240199) (not e!247124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25099 (_ BitVec 32)) Bool)

(assert (=> b!413251 (= res!240199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!413252 () Bool)

(assert (=> b!413252 (= e!247127 (and e!247128 mapRes!17565))))

(declare-fun condMapEmpty!17565 () Bool)

(declare-fun mapDefault!17565 () ValueCell!4971)

(assert (=> b!413252 (= condMapEmpty!17565 (= (arr!11995 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4971)) mapDefault!17565)))))

(declare-fun b!413253 () Bool)

(declare-fun res!240195 () Bool)

(assert (=> b!413253 (=> (not res!240195) (not e!247126))))

(assert (=> b!413253 (= res!240195 (arrayNoDuplicates!0 lt!189689 #b00000000000000000000000000000000 Nil!6945))))

(declare-fun b!413254 () Bool)

(declare-fun res!240196 () Bool)

(assert (=> b!413254 (=> (not res!240196) (not e!247124))))

(declare-fun arrayContainsKey!0 (array!25099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413254 (= res!240196 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!413255 () Bool)

(assert (=> b!413255 (= e!247124 e!247126)))

(declare-fun res!240201 () Bool)

(assert (=> b!413255 (=> (not res!240201) (not e!247126))))

(assert (=> b!413255 (= res!240201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189689 mask!1025))))

(assert (=> b!413255 (= lt!189689 (array!25100 (store (arr!11996 _keys!709) i!563 k0!794) (size!12348 _keys!709)))))

(assert (= (and start!39218 res!240206) b!413245))

(assert (= (and b!413245 res!240203) b!413248))

(assert (= (and b!413248 res!240207) b!413251))

(assert (= (and b!413251 res!240199) b!413250))

(assert (= (and b!413250 res!240205) b!413240))

(assert (= (and b!413240 res!240198) b!413239))

(assert (= (and b!413239 res!240197) b!413243))

(assert (= (and b!413243 res!240202) b!413254))

(assert (= (and b!413254 res!240196) b!413255))

(assert (= (and b!413255 res!240201) b!413253))

(assert (= (and b!413253 res!240195) b!413244))

(assert (= (and b!413244 res!240204) b!413246))

(assert (= (and b!413246 res!240200) b!413247))

(assert (= (and b!413247 c!54854) b!413242))

(assert (= (and b!413247 (not c!54854)) b!413249))

(assert (= (or b!413242 b!413249) bm!28603))

(assert (= (or b!413242 b!413249) bm!28604))

(assert (= (and b!413252 condMapEmpty!17565) mapIsEmpty!17565))

(assert (= (and b!413252 (not condMapEmpty!17565)) mapNonEmpty!17565))

(get-info :version)

(assert (= (and mapNonEmpty!17565 ((_ is ValueCellFull!4971) mapValue!17565)) b!413241))

(assert (= (and b!413252 ((_ is ValueCellFull!4971) mapDefault!17565)) b!413238))

(assert (= start!39218 b!413252))

(declare-fun m!402779 () Bool)

(assert (=> b!413243 m!402779))

(declare-fun m!402781 () Bool)

(assert (=> b!413239 m!402781))

(declare-fun m!402783 () Bool)

(assert (=> b!413250 m!402783))

(declare-fun m!402785 () Bool)

(assert (=> b!413251 m!402785))

(declare-fun m!402787 () Bool)

(assert (=> b!413245 m!402787))

(declare-fun m!402789 () Bool)

(assert (=> bm!28604 m!402789))

(declare-fun m!402791 () Bool)

(assert (=> b!413253 m!402791))

(declare-fun m!402793 () Bool)

(assert (=> start!39218 m!402793))

(declare-fun m!402795 () Bool)

(assert (=> start!39218 m!402795))

(declare-fun m!402797 () Bool)

(assert (=> b!413246 m!402797))

(declare-fun m!402799 () Bool)

(assert (=> b!413246 m!402799))

(declare-fun m!402801 () Bool)

(assert (=> b!413246 m!402801))

(declare-fun m!402803 () Bool)

(assert (=> mapNonEmpty!17565 m!402803))

(declare-fun m!402805 () Bool)

(assert (=> b!413247 m!402805))

(declare-fun m!402807 () Bool)

(assert (=> b!413254 m!402807))

(declare-fun m!402809 () Bool)

(assert (=> b!413255 m!402809))

(declare-fun m!402811 () Bool)

(assert (=> b!413255 m!402811))

(declare-fun m!402813 () Bool)

(assert (=> bm!28603 m!402813))

(declare-fun m!402815 () Bool)

(assert (=> b!413242 m!402815))

(check-sat (not b_next!9477) (not b!413245) b_and!16881 tp_is_empty!10629 (not b!413242) (not mapNonEmpty!17565) (not b!413254) (not bm!28604) (not bm!28603) (not b!413251) (not start!39218) (not b!413246) (not b!413247) (not b!413250) (not b!413239) (not b!413253) (not b!413255))
(check-sat b_and!16881 (not b_next!9477))
