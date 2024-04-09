; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39022 () Bool)

(assert start!39022)

(declare-fun b!408770 () Bool)

(declare-fun res!236674 () Bool)

(declare-fun e!245294 () Bool)

(assert (=> b!408770 (=> (not res!236674) (not e!245294))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24719 0))(
  ( (array!24720 (arr!11806 (Array (_ BitVec 32) (_ BitVec 64))) (size!12158 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24719)

(assert (=> b!408770 (= res!236674 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12158 _keys!709))))))

(declare-fun mapNonEmpty!17271 () Bool)

(declare-fun mapRes!17271 () Bool)

(declare-fun tp!33390 () Bool)

(declare-fun e!245298 () Bool)

(assert (=> mapNonEmpty!17271 (= mapRes!17271 (and tp!33390 e!245298))))

(declare-datatypes ((V!15015 0))(
  ( (V!15016 (val!5261 Int)) )
))
(declare-datatypes ((ValueCell!4873 0))(
  ( (ValueCellFull!4873 (v!7504 V!15015)) (EmptyCell!4873) )
))
(declare-fun mapValue!17271 () ValueCell!4873)

(declare-fun mapKey!17271 () (_ BitVec 32))

(declare-datatypes ((array!24721 0))(
  ( (array!24722 (arr!11807 (Array (_ BitVec 32) ValueCell!4873)) (size!12159 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24721)

(declare-fun mapRest!17271 () (Array (_ BitVec 32) ValueCell!4873))

(assert (=> mapNonEmpty!17271 (= (arr!11807 _values!549) (store mapRest!17271 mapKey!17271 mapValue!17271))))

(declare-fun res!236675 () Bool)

(assert (=> start!39022 (=> (not res!236675) (not e!245294))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39022 (= res!236675 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12158 _keys!709))))))

(assert (=> start!39022 e!245294))

(assert (=> start!39022 true))

(declare-fun e!245297 () Bool)

(declare-fun array_inv!8622 (array!24721) Bool)

(assert (=> start!39022 (and (array_inv!8622 _values!549) e!245297)))

(declare-fun array_inv!8623 (array!24719) Bool)

(assert (=> start!39022 (array_inv!8623 _keys!709)))

(declare-fun b!408771 () Bool)

(declare-fun e!245296 () Bool)

(assert (=> b!408771 (= e!245296 false)))

(declare-fun lt!188841 () Bool)

(declare-fun lt!188840 () array!24719)

(declare-datatypes ((List!6817 0))(
  ( (Nil!6814) (Cons!6813 (h!7669 (_ BitVec 64)) (t!11999 List!6817)) )
))
(declare-fun arrayNoDuplicates!0 (array!24719 (_ BitVec 32) List!6817) Bool)

(assert (=> b!408771 (= lt!188841 (arrayNoDuplicates!0 lt!188840 #b00000000000000000000000000000000 Nil!6814))))

(declare-fun b!408772 () Bool)

(declare-fun tp_is_empty!10433 () Bool)

(assert (=> b!408772 (= e!245298 tp_is_empty!10433)))

(declare-fun b!408773 () Bool)

(declare-fun res!236676 () Bool)

(assert (=> b!408773 (=> (not res!236676) (not e!245294))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!408773 (= res!236676 (and (= (size!12159 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12158 _keys!709) (size!12159 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408774 () Bool)

(declare-fun res!236678 () Bool)

(assert (=> b!408774 (=> (not res!236678) (not e!245294))))

(assert (=> b!408774 (= res!236678 (or (= (select (arr!11806 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11806 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408775 () Bool)

(declare-fun res!236673 () Bool)

(assert (=> b!408775 (=> (not res!236673) (not e!245294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408775 (= res!236673 (validMask!0 mask!1025))))

(declare-fun b!408776 () Bool)

(declare-fun res!236679 () Bool)

(assert (=> b!408776 (=> (not res!236679) (not e!245294))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408776 (= res!236679 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!408777 () Bool)

(declare-fun res!236682 () Bool)

(assert (=> b!408777 (=> (not res!236682) (not e!245294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24719 (_ BitVec 32)) Bool)

(assert (=> b!408777 (= res!236682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17271 () Bool)

(assert (=> mapIsEmpty!17271 mapRes!17271))

(declare-fun b!408778 () Bool)

(declare-fun e!245299 () Bool)

(assert (=> b!408778 (= e!245299 tp_is_empty!10433)))

(declare-fun b!408779 () Bool)

(declare-fun res!236680 () Bool)

(assert (=> b!408779 (=> (not res!236680) (not e!245294))))

(assert (=> b!408779 (= res!236680 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6814))))

(declare-fun b!408780 () Bool)

(assert (=> b!408780 (= e!245297 (and e!245299 mapRes!17271))))

(declare-fun condMapEmpty!17271 () Bool)

(declare-fun mapDefault!17271 () ValueCell!4873)

