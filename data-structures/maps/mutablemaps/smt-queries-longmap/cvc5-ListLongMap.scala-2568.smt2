; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39234 () Bool)

(assert start!39234)

(declare-fun b_free!9493 () Bool)

(declare-fun b_next!9493 () Bool)

(assert (=> start!39234 (= b_free!9493 (not b_next!9493))))

(declare-fun tp!34007 () Bool)

(declare-fun b_and!16897 () Bool)

(assert (=> start!39234 (= tp!34007 b_and!16897)))

(declare-fun mapIsEmpty!17589 () Bool)

(declare-fun mapRes!17589 () Bool)

(assert (=> mapIsEmpty!17589 mapRes!17589))

(declare-fun b!413670 () Bool)

(declare-fun e!247316 () Bool)

(declare-fun tp_is_empty!10645 () Bool)

(assert (=> b!413670 (= e!247316 tp_is_empty!10645)))

(declare-fun b!413671 () Bool)

(declare-fun res!240507 () Bool)

(declare-fun e!247320 () Bool)

(assert (=> b!413671 (=> (not res!240507) (not e!247320))))

(declare-datatypes ((array!25129 0))(
  ( (array!25130 (arr!12011 (Array (_ BitVec 32) (_ BitVec 64))) (size!12363 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25129)

(declare-datatypes ((List!6963 0))(
  ( (Nil!6960) (Cons!6959 (h!7815 (_ BitVec 64)) (t!12145 List!6963)) )
))
(declare-fun arrayNoDuplicates!0 (array!25129 (_ BitVec 32) List!6963) Bool)

(assert (=> b!413671 (= res!240507 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6960))))

(declare-fun b!413672 () Bool)

(declare-fun res!240519 () Bool)

(assert (=> b!413672 (=> (not res!240519) (not e!247320))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413672 (= res!240519 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12363 _keys!709))))))

(declare-fun b!413673 () Bool)

(declare-fun res!240518 () Bool)

(assert (=> b!413673 (=> (not res!240518) (not e!247320))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15299 0))(
  ( (V!15300 (val!5367 Int)) )
))
(declare-datatypes ((ValueCell!4979 0))(
  ( (ValueCellFull!4979 (v!7610 V!15299)) (EmptyCell!4979) )
))
(declare-datatypes ((array!25131 0))(
  ( (array!25132 (arr!12012 (Array (_ BitVec 32) ValueCell!4979)) (size!12364 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25131)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!413673 (= res!240518 (and (= (size!12364 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12363 _keys!709) (size!12364 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!413674 () Bool)

(declare-fun e!247321 () Bool)

(assert (=> b!413674 (= e!247321 (not true))))

(declare-fun e!247314 () Bool)

(assert (=> b!413674 e!247314))

(declare-fun c!54878 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!413674 (= c!54878 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15299)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((Unit!12199 0))(
  ( (Unit!12200) )
))
(declare-fun lt!189810 () Unit!12199)

(declare-fun zeroValue!515 () V!15299)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15299)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!362 (array!25129 array!25131 (_ BitVec 32) (_ BitVec 32) V!15299 V!15299 (_ BitVec 32) (_ BitVec 64) V!15299 (_ BitVec 32) Int) Unit!12199)

(assert (=> b!413674 (= lt!189810 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!362 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413675 () Bool)

(declare-fun e!247319 () Bool)

(assert (=> b!413675 (= e!247319 tp_is_empty!10645)))

(declare-fun b!413676 () Bool)

(declare-fun res!240509 () Bool)

(assert (=> b!413676 (=> (not res!240509) (not e!247320))))

(assert (=> b!413676 (= res!240509 (or (= (select (arr!12011 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12011 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413677 () Bool)

(declare-fun res!240510 () Bool)

(assert (=> b!413677 (=> (not res!240510) (not e!247320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413677 (= res!240510 (validMask!0 mask!1025))))

(declare-datatypes ((tuple2!6902 0))(
  ( (tuple2!6903 (_1!3461 (_ BitVec 64)) (_2!3461 V!15299)) )
))
(declare-datatypes ((List!6964 0))(
  ( (Nil!6961) (Cons!6960 (h!7816 tuple2!6902) (t!12146 List!6964)) )
))
(declare-datatypes ((ListLongMap!5829 0))(
  ( (ListLongMap!5830 (toList!2930 List!6964)) )
))
(declare-fun call!28655 () ListLongMap!5829)

(declare-fun b!413678 () Bool)

(declare-fun call!28654 () ListLongMap!5829)

(declare-fun +!1149 (ListLongMap!5829 tuple2!6902) ListLongMap!5829)

(assert (=> b!413678 (= e!247314 (= call!28654 (+!1149 call!28655 (tuple2!6903 k!794 v!412))))))

(declare-fun b!413679 () Bool)

(declare-fun e!247318 () Bool)

(assert (=> b!413679 (= e!247320 e!247318)))

(declare-fun res!240514 () Bool)

(assert (=> b!413679 (=> (not res!240514) (not e!247318))))

(declare-fun lt!189807 () array!25129)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25129 (_ BitVec 32)) Bool)

(assert (=> b!413679 (= res!240514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189807 mask!1025))))

(assert (=> b!413679 (= lt!189807 (array!25130 (store (arr!12011 _keys!709) i!563 k!794) (size!12363 _keys!709)))))

(declare-fun res!240512 () Bool)

(assert (=> start!39234 (=> (not res!240512) (not e!247320))))

(assert (=> start!39234 (= res!240512 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12363 _keys!709))))))

(assert (=> start!39234 e!247320))

(assert (=> start!39234 tp_is_empty!10645))

(assert (=> start!39234 tp!34007))

(assert (=> start!39234 true))

(declare-fun e!247317 () Bool)

(declare-fun array_inv!8762 (array!25131) Bool)

(assert (=> start!39234 (and (array_inv!8762 _values!549) e!247317)))

(declare-fun array_inv!8763 (array!25129) Bool)

(assert (=> start!39234 (array_inv!8763 _keys!709)))

(declare-fun b!413680 () Bool)

(assert (=> b!413680 (= e!247318 e!247321)))

(declare-fun res!240513 () Bool)

(assert (=> b!413680 (=> (not res!240513) (not e!247321))))

(assert (=> b!413680 (= res!240513 (= from!863 i!563))))

(declare-fun lt!189806 () ListLongMap!5829)

(declare-fun lt!189809 () array!25131)

(declare-fun getCurrentListMapNoExtraKeys!1138 (array!25129 array!25131 (_ BitVec 32) (_ BitVec 32) V!15299 V!15299 (_ BitVec 32) Int) ListLongMap!5829)

(assert (=> b!413680 (= lt!189806 (getCurrentListMapNoExtraKeys!1138 lt!189807 lt!189809 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!413680 (= lt!189809 (array!25132 (store (arr!12012 _values!549) i!563 (ValueCellFull!4979 v!412)) (size!12364 _values!549)))))

(declare-fun lt!189808 () ListLongMap!5829)

(assert (=> b!413680 (= lt!189808 (getCurrentListMapNoExtraKeys!1138 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!413681 () Bool)

(assert (=> b!413681 (= e!247314 (= call!28655 call!28654))))

(declare-fun b!413682 () Bool)

(declare-fun res!240511 () Bool)

(assert (=> b!413682 (=> (not res!240511) (not e!247320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413682 (= res!240511 (validKeyInArray!0 k!794))))

(declare-fun b!413683 () Bool)

(declare-fun res!240515 () Bool)

(assert (=> b!413683 (=> (not res!240515) (not e!247318))))

(assert (=> b!413683 (= res!240515 (arrayNoDuplicates!0 lt!189807 #b00000000000000000000000000000000 Nil!6960))))

(declare-fun b!413684 () Bool)

(declare-fun res!240508 () Bool)

(assert (=> b!413684 (=> (not res!240508) (not e!247320))))

(assert (=> b!413684 (= res!240508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!28651 () Bool)

(assert (=> bm!28651 (= call!28655 (getCurrentListMapNoExtraKeys!1138 (ite c!54878 _keys!709 lt!189807) (ite c!54878 _values!549 lt!189809) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28652 () Bool)

(assert (=> bm!28652 (= call!28654 (getCurrentListMapNoExtraKeys!1138 (ite c!54878 lt!189807 _keys!709) (ite c!54878 lt!189809 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413685 () Bool)

(assert (=> b!413685 (= e!247317 (and e!247319 mapRes!17589))))

(declare-fun condMapEmpty!17589 () Bool)

(declare-fun mapDefault!17589 () ValueCell!4979)

